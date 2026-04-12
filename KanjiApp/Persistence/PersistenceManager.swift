import Foundation
import Combine

// MARK: - App State (ObservableObject, persisted via UserDefaults)

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
        didSet { defaults.set(sessionSize, forKey: Keys.sessionSize) }
    }

    // ── Onboarding
    @Published var hasCompletedOnboarding: Bool = false {
        didSet { defaults.set(hasCompletedOnboarding, forKey: Keys.hasCompletedOnboarding) }
    }

    // ── Notification preferences
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

    // ─────────────────────────────────────────────────────
    private let defaults = UserDefaults.standard

    private enum Keys {
        static let cards                = "srs_cards_v1"
        static let studyDates           = "study_dates_v1"
        static let sessionHistory       = "session_history_v1"
        static let selectedLevels       = "selected_levels_v1"
        static let sessionSize          = "session_size_v1"
        static let notificationsEnabled      = "notifications_enabled_v1"
        static let notificationHour          = "notification_hour_v1"
        static let notificationMinute        = "notification_minute_v1"
        static let hasCompletedOnboarding    = "has_completed_onboarding_v1"
    }

    init() { load() }

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

    // MARK: - Reset

    /// Wipes all SRS progress, study dates, and session history.
    /// User preferences (levels, session size, notifications) are kept.
    func resetProgress() {
        cards                  = [:]
        studyDates             = []
        sessionHistory         = []
        defaults.removeObject(forKey: Keys.cards)
        defaults.removeObject(forKey: Keys.studyDates)
        defaults.removeObject(forKey: Keys.sessionHistory)
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

    // MARK: - Persistence

    private func save() {
        if let d = try? JSONEncoder().encode(cards)         { defaults.set(d, forKey: Keys.cards) }
        if let d = try? JSONEncoder().encode(studyDates)    { defaults.set(d, forKey: Keys.studyDates) }
        if let d = try? JSONEncoder().encode(sessionHistory){ defaults.set(d, forKey: Keys.sessionHistory) }
        defaults.set(selectedLevels.map { $0.rawValue }, forKey: Keys.selectedLevels)
    }

    private func load() {
        if let d = defaults.data(forKey: Keys.cards),
           let v = try? JSONDecoder().decode([String: SRSCard].self, from: d)   { cards = v }
        if let d = defaults.data(forKey: Keys.studyDates),
           let v = try? JSONDecoder().decode([Date].self, from: d)              { studyDates = v }
        if let d = defaults.data(forKey: Keys.sessionHistory),
           let v = try? JSONDecoder().decode([StudySession].self, from: d)      { sessionHistory = v }
        if let raws = defaults.stringArray(forKey: Keys.selectedLevels) {
            selectedLevels = Set(raws.compactMap { JLPTLevel(rawValue: $0) })
            if selectedLevels.isEmpty { selectedLevels = [.N5] }
        }
        sessionSize               = defaults.object(forKey: Keys.sessionSize)              as? Int ?? 10
        notificationsEnabled      = defaults.bool(forKey: Keys.notificationsEnabled)
        notificationHour          = defaults.object(forKey: Keys.notificationHour)         as? Int ?? 9
        notificationMinute        = defaults.object(forKey: Keys.notificationMinute)       as? Int ?? 0
        hasCompletedOnboarding    = defaults.bool(forKey: Keys.hasCompletedOnboarding)
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
