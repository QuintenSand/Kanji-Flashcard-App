import Foundation
import Combine

// MARK: - App State (ObservableObject, persisted via UserDefaults + iCloud KV Store)
//
// Strategy:
//   • UserDefaults  — local cache, instant reads, works offline
//   • NSUbiquitousKeyValueStore (iCloud) — cloud backup & cross-device sync
//
// On every save we write to both stores.
// When iCloud pushes an external change we merge it into UserDefaults
// and refresh the published properties so the UI updates automatically.
//
// ⚠️  Requires "iCloud → Key-value storage" capability in Xcode:
//     Project → KanjiApp target → Signing & Capabilities → + Capability → iCloud → ✓ Key-value storage

final class AppState: ObservableObject {

    // ── SRS cards: kanjiID → SRSCard
    @Published var cards: [String: SRSCard] = [:] {
        didSet { save() }
    }

    // ── Study streak
    @Published var studyDates: [Date] = [] {
        didSet { save() }
    }

    // ── Session history: (date, count, correct)
    @Published var sessionHistory: [StudySession] = [] {
        didSet { save() }
    }

    // ── Selected JLPT levels for study
    @Published var selectedLevels: Set<JLPTLevel> = [.N5] {
        didSet { save() }
    }

    // ── Session size preference (cards per review)
    @Published var sessionSize: Int = 10 {
        didSet {
            defaults.set(sessionSize, forKey: Keys.sessionSize)
            icloud.set(sessionSize,   forKey: Keys.sessionSize)
            icloud.synchronize()
        }
    }

    // ── Notification preferences (local only — not synced to iCloud)
    @Published var notificationsEnabled: Bool = false {
        didSet {
            defaults.set(notificationsEnabled, forKey: Keys.notificationsEnabled)
            rescheduleNotification()
        }
    }
    @Published var notificationHour: Int = 9 {
        didSet {
            defaults.set(notificationHour, forKey: Keys.notificationHour)
            rescheduleNotification()
        }
    }
    @Published var notificationMinute: Int = 0 {
        didSet {
            defaults.set(notificationMinute, forKey: Keys.notificationMinute)
            rescheduleNotification()
        }
    }

    // ── iCloud sync status (shown in Settings)
    @Published var iCloudAvailable: Bool = false

    // ─────────────────────────────────────────────────────
    private let defaults = UserDefaults.standard
    private let icloud   = NSUbiquitousKeyValueStore.default

    private enum Keys {
        static let cards                = "srs_cards_v1"
        static let studyDates           = "study_dates_v1"
        static let sessionHistory       = "session_history_v1"
        static let selectedLevels       = "selected_levels_v1"
        static let sessionSize          = "session_size_v1"
        static let notificationsEnabled = "notifications_enabled_v1"
        static let notificationHour     = "notification_hour_v1"
        static let notificationMinute   = "notification_minute_v1"
    }

    init() {
        load()
        startICloudSync()
    }

    // MARK: - Computed stats

    var currentStreak: Int {
        guard !studyDates.isEmpty else { return 0 }
        let calendar = Calendar.current
        let today = calendar.startOfDay(for: Date())
        var streak = 0
        var checkDate = today
        while true {
            let studied = studyDates.contains { calendar.isDate($0, inSameDayAs: checkDate) }
            guard studied else { break }
            streak += 1
            checkDate = calendar.date(byAdding: .day, value: -1, to: checkDate)!
        }
        return streak
    }

    var longestStreak: Int {
        guard !studyDates.isEmpty else { return 0 }
        let calendar = Calendar.current
        let sorted = studyDates.map { calendar.startOfDay(for: $0) }.sorted()
        var best = 1, current = 1
        for i in 1..<sorted.count {
            let diff = calendar.dateComponents([.day], from: sorted[i-1], to: sorted[i]).day ?? 0
            if diff == 1 { current += 1; best = max(best, current) }
            else if diff > 1 { current = 1 }
        }
        return best
    }

    var totalReviewed: Int { cards.values.reduce(0) { $0 + $1.totalReviews } }
    var totalCorrect:  Int { cards.values.reduce(0) { $0 + $1.correctReviews } }
    var overallAccuracy: Double {
        guard totalReviewed > 0 else { return 0 }
        return Double(totalCorrect) / Double(totalReviewed)
    }

    var masteredCount: Int { cards.values.filter { $0.interval >= 21 }.count }
    var learnedCount:  Int { cards.values.filter { $0.repetitions > 0 }.count }
    var dueCount:      Int { cards.values.filter { $0.isDueForReview }.count }

    func levelProgress(_ level: JLPTLevel) -> Double {
        let total = KanjiDatabase.all.filter { $0.level == level }.count
        guard total > 0 else { return 0 }
        let learned = cards.values.filter { card in
            guard let k = KanjiDatabase.all.first(where: { $0.id == card.id }) else { return false }
            return k.level == level && card.repetitions > 0
        }.count
        return Double(learned) / Double(total)
    }

    // MARK: - Study actions

    func recordReview(kanjiID: String, rating: ReviewRating) {
        let existing = cards[kanjiID] ?? SRSCard(kanjiID: kanjiID)
        cards[kanjiID] = SRSEngine.processReview(card: existing, rating: rating)
        markStudiedToday()
    }

    func recordSession(_ session: StudySession) {
        sessionHistory.append(session)
        if sessionHistory.count > 200 { sessionHistory.removeFirst() }
    }

    private func markStudiedToday() {
        let today = Calendar.current.startOfDay(for: Date())
        if !studyDates.contains(where: { Calendar.current.isDate($0, inSameDayAs: today) }) {
            studyDates.append(today)
        }
    }

    // MARK: - Notifications

    func rescheduleNotification() {
        if notificationsEnabled {
            NotificationManager.shared.scheduleDailyReminder(
                hour:     notificationHour,
                minute:   notificationMinute,
                dueCount: dueCount
            )
        } else {
            NotificationManager.shared.cancelDailyReminder()
        }
    }

    // MARK: - Persistence (local + iCloud)

    private func save() {
        // Encode the three main data blobs
        let cardsData   = try? JSONEncoder().encode(cards)
        let datesData   = try? JSONEncoder().encode(studyDates)
        let historyData = try? JSONEncoder().encode(sessionHistory)
        let levelRaws   = selectedLevels.map { $0.rawValue }

        // ── Write to UserDefaults (local, instant)
        if let d = cardsData   { defaults.set(d, forKey: Keys.cards) }
        if let d = datesData   { defaults.set(d, forKey: Keys.studyDates) }
        if let d = historyData { defaults.set(d, forKey: Keys.sessionHistory) }
        defaults.set(levelRaws, forKey: Keys.selectedLevels)

        // ── Write to iCloud KV Store (syncs when network available)
        guard iCloudAvailable else { return }
        if let d = cardsData   { icloud.set(d,         forKey: Keys.cards) }
        if let d = datesData   { icloud.set(d,         forKey: Keys.studyDates) }
        if let d = historyData { icloud.set(d,         forKey: Keys.sessionHistory) }
        icloud.set(levelRaws,  forKey: Keys.selectedLevels)
        icloud.synchronize()
    }

    private func load() {
        // Try iCloud first (more up-to-date if user just reinstalled),
        // fall back to UserDefaults if iCloud has nothing yet.
        iCloudAvailable = FileManager.default.ubiquityIdentityToken != nil

        func data(forKey key: String) -> Data? {
            if iCloudAvailable, let d = icloud.data(forKey: key) { return d }
            return defaults.data(forKey: key)
        }

        if let d = data(forKey: Keys.cards),
           let decoded = try? JSONDecoder().decode([String: SRSCard].self, from: d) {
            cards = decoded
        }
        if let d = data(forKey: Keys.studyDates),
           let decoded = try? JSONDecoder().decode([Date].self, from: d) {
            studyDates = decoded
        }
        if let d = data(forKey: Keys.sessionHistory),
           let decoded = try? JSONDecoder().decode([StudySession].self, from: d) {
            sessionHistory = decoded
        }

        let cloudLevels   = iCloudAvailable ? icloud.array(forKey: Keys.selectedLevels) as? [String] : nil
        let defaultLevels = defaults.stringArray(forKey: Keys.selectedLevels)
        if let raws = cloudLevels ?? defaultLevels {
            selectedLevels = Set(raws.compactMap { JLPTLevel(rawValue: $0) })
            if selectedLevels.isEmpty { selectedLevels = [.N5] }
        }

        let cloudSize = iCloudAvailable ? icloud.object(forKey: Keys.sessionSize) as? Int : nil
        sessionSize          = cloudSize ?? defaults.object(forKey: Keys.sessionSize) as? Int ?? 10
        notificationsEnabled = defaults.bool(forKey: Keys.notificationsEnabled)
        notificationHour     = defaults.object(forKey: Keys.notificationHour)   as? Int ?? 9
        notificationMinute   = defaults.object(forKey: Keys.notificationMinute) as? Int ?? 0
    }

    // MARK: - iCloud external change listener

    private func startICloudSync() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(iCloudDidChange(_:)),
            name: NSUbiquitousKeyValueStore.didChangeExternallyNotification,
            object: icloud
        )
        // Kick off an initial sync fetch
        icloud.synchronize()
    }

    @objc private func iCloudDidChange(_ notification: Notification) {
        // Run on the main thread so @Published updates hit the UI
        DispatchQueue.main.async { [weak self] in
            self?.mergeFromICloud()
        }
    }

    /// Merge fresh iCloud values into the local state.
    /// Uses a "most-data-wins" strategy for cards and studyDates.
    private func mergeFromICloud() {
        // Cards — keep whichever side has the higher review count per kanji
        if let d = icloud.data(forKey: Keys.cards),
           let cloudCards = try? JSONDecoder().decode([String: SRSCard].self, from: d) {
            var merged = cards
            for (id, cloudCard) in cloudCards {
                if let local = merged[id] {
                    merged[id] = local.totalReviews >= cloudCard.totalReviews ? local : cloudCard
                } else {
                    merged[id] = cloudCard
                }
            }
            if merged != cards { cards = merged }
        }

        // Study dates — union of both sets
        if let d = icloud.data(forKey: Keys.studyDates),
           let cloudDates = try? JSONDecoder().decode([Date].self, from: d) {
            let calendar = Calendar.current
            var merged = studyDates
            for date in cloudDates {
                if !merged.contains(where: { calendar.isDate($0, inSameDayAs: date) }) {
                    merged.append(date)
                }
            }
            if merged.count != studyDates.count { studyDates = merged }
        }

        // Session history — union, capped at 200
        if let d = icloud.data(forKey: Keys.sessionHistory),
           let cloudHistory = try? JSONDecoder().decode([StudySession].self, from: d) {
            let existingIDs = Set(sessionHistory.map { $0.id })
            let newSessions = cloudHistory.filter { !existingIDs.contains($0.id) }
            if !newSessions.isEmpty {
                var merged = (sessionHistory + newSessions).sorted { $0.date < $1.date }
                if merged.count > 200 { merged = Array(merged.suffix(200)) }
                sessionHistory = merged
            }
        }
    }
}

// MARK: - Study Session Record
struct StudySession: Codable, Identifiable {
    var id = UUID()
    var date: Date
    var reviewed: Int
    var correct: Int
    var durationSeconds: Int
    var levels: [String]

    var accuracy: Double {
        guard reviewed > 0 else { return 0 }
        return Double(correct) / Double(reviewed)
    }
}
