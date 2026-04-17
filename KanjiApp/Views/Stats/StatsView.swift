import SwiftUI

// MARK: - Stats Root View
struct StatsView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {

                    // ── Top KPI strip
                    HStack(spacing: 0) {
                        KPITile(value: "\(appState.currentStreak)",
                                label: "Streak",
                                icon: "flame.fill",
                                color: .orange)
                        Divider().frame(height: 50)
                        KPITile(value: "\(appState.totalReviewed)",
                                label: "Reviews",
                                icon: "arrow.clockwise",
                                color: .blue)
                        Divider().frame(height: 50)
                        KPITile(value: String(format: "%.0f%%", appState.overallAccuracy * 100),
                                label: "Accuracy",
                                icon: "checkmark.circle",
                                color: .green)
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 18))
                    .padding(.horizontal)

                    // ── Mastery overview
                    MasterySection()
                        .padding(.horizontal)

                    // ── Level breakdown
                    LevelBreakdownSection()
                        .padding(.horizontal)

                    // ── Activity heatmap (last 12 weeks)
                    ActivityHeatmap()
                        .padding(.horizontal)

                    // ── Problem kanji
                    if !appState.problemKanji.isEmpty {
                        ProblemKanjiSection()
                            .padding(.horizontal)
                    }

                    // ── Recent sessions
                    if !appState.sessionHistory.isEmpty {
                        RecentSessionsSection()
                            .padding(.horizontal)
                    }

                    Spacer(minLength: 32)
                }
                .padding(.top)
            }
            .navigationTitle("Statistics")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// MARK: - KPI Tile
private struct KPITile: View {
    let value: String
    let label: String
    let icon: String
    let color: Color

    var body: some View {
        VStack(spacing: 6) {
            Image(systemName: icon)
                .font(.subheadline)
                .foregroundStyle(color)
            Text(value)
                .font(.title2.weight(.bold))
            Text(label)
                .font(.caption)
                .foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(label): \(value)")
    }
}

// MARK: - Mastery Section
private struct MasterySection: View {
    @EnvironmentObject var appState: AppState

    private let total = KanjiDatabase.all.count

    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            Text("Mastery Overview")
                .font(.headline)

            // Ring chart replacement: stacked progress
            VStack(spacing: 10) {
                MasteryRow(label: "Mastered",    value: appState.masteredCount, total: total, color: .green)
                MasteryRow(label: "In Progress", value: appState.learnedCount - appState.masteredCount, total: total, color: .blue)
                MasteryRow(label: "Not Started", value: total - appState.learnedCount, total: total, color: Color(.systemGray4))
            }

            HStack {
                Text("\(appState.learnedCount) / \(total) kanji started")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                Spacer()
                Text("Longest streak: \(appState.longestStreak) days")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

private struct MasteryRow: View {
    let label: String
    let value: Int
    let total: Int
    let color: Color

    private var fraction: CGFloat {
        guard total > 0 else { return 0 }
        return CGFloat(value) / CGFloat(total)
    }

    var body: some View {
        HStack(spacing: 10) {
            Circle().fill(color).frame(width: 8, height: 8)
                .accessibilityHidden(true)
            Text(label).font(.subheadline).frame(width: 100, alignment: .leading)
            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    Capsule().fill(color.opacity(0.15)).frame(height: 8)
                    Capsule().fill(color)
                        .frame(width: geo.size.width * fraction, height: 8)
                }
            }
            .frame(height: 8)
            .accessibilityHidden(true)
            Text("\(value)").font(.caption.weight(.semibold)).foregroundStyle(color)
                .frame(width: 36, alignment: .trailing)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(label): \(value) of \(total) kanji")
    }
}

// MARK: - Level breakdown
private struct LevelBreakdownSection: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Progress by Level")
                .font(.headline)

            ForEach(JLPTLevel.allCases, id: \.self) { level in
                LevelBreakdownRow(level: level, progress: appState.levelProgress(level))
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

private struct LevelBreakdownRow: View {
    let level: JLPTLevel
    let progress: Double

    private var color: Color {
        switch level {
        case .N5: return .green
        case .N4: return .blue
        case .N3: return .orange
        case .N2: return .purple
        case .N1: return .red
        }
    }

    var body: some View {
        HStack(spacing: 12) {
            Text(level.rawValue)
                .font(.subheadline.weight(.bold))
                .foregroundStyle(color)
                .frame(width: 28)

            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    Capsule().fill(color.opacity(0.12)).frame(height: 10)
                    Capsule().fill(color)
                        .frame(width: geo.size.width * progress, height: 10)
                        .animation(.easeOut(duration: 0.8), value: progress)
                }
            }
            .frame(height: 10)

            Text(String(format: "%.0f%%", progress * 100))
                .font(.caption.weight(.semibold))
                .foregroundStyle(color)
                .frame(width: 36, alignment: .trailing)
        }
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(level.rawValue): \(String(format: "%.0f", progress * 100)) percent progress")
    }
}

// MARK: - Activity Heatmap (last 12 weeks)
private struct ActivityHeatmap: View {
    @EnvironmentObject var appState: AppState

    private let columns = 12   // weeks
    private let rows    = 7    // days

    private var studiedDaySet: Set<String> {
        let fmt = DateFormatter(); fmt.dateFormat = "yyyy-MM-dd"
        return Set(appState.studyDates.map { fmt.string(from: $0) })
    }

    private func dayLabel(_ offset: Int) -> String {
        let d = Calendar.current.date(byAdding: .day, value: -offset, to: Date())!
        let fmt = DateFormatter(); fmt.dateFormat = "yyyy-MM-dd"
        return fmt.string(from: d)
    }

    private var studiedDaysCount: Int {
        let cal = Calendar.current
        let cutoff = cal.date(byAdding: .day, value: -(columns * rows), to: Date())!
        return appState.studyDates.filter { $0 >= cutoff }.count
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Activity (last 12 weeks)")
                .font(.headline)

            HStack(alignment: .top, spacing: 3) {
                ForEach(0..<columns, id: \.self) { week in
                    VStack(spacing: 3) {
                        ForEach(0..<rows, id: \.self) { day in
                            let offset = (columns - 1 - week) * 7 + (rows - 1 - day)
                            let key = dayLabel(offset)
                            let studied = studiedDaySet.contains(key)
                            RoundedRectangle(cornerRadius: 2)
                                .fill(studied ? Color.accentColor : Color(.systemGray5))
                                .frame(width: 14, height: 14)
                        }
                    }
                }
            }
            .accessibilityHidden(true)

            HStack {
                Circle().fill(Color(.systemGray5)).frame(width: 8)
                Text("No study").font(.caption2).foregroundStyle(.secondary)
                Spacer().frame(width: 12)
                Circle().fill(Color.accentColor).frame(width: 8)
                Text("Studied").font(.caption2).foregroundStyle(.secondary)
            }
            .accessibilityHidden(true)
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 18))
        .accessibilityElement(children: .contain)
        .accessibilityLabel("Activity heatmap, last 12 weeks. You studied on \(studiedDaysCount) of \(columns * rows) days.")
    }
}

// MARK: - Problem Kanji
private struct ProblemKanjiSection: View {
    @EnvironmentObject var appState: AppState

    private var items: [(kanji: Kanji, card: SRSCard)] {
        Array(appState.problemKanji.prefix(10))
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack {
                Image(systemName: "exclamationmark.triangle.fill")
                    .foregroundStyle(.orange)
                Text("Problem Kanji")
                    .font(.headline)
                Spacer()
                Text("\(appState.problemKanji.count) total")
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }

            Text("Kanji you find most difficult (below 60% accuracy)")
                .font(.caption)
                .foregroundStyle(.secondary)

            ForEach(items, id: \.kanji.id) { item in
                HStack(spacing: 14) {
                    Text(item.kanji.id)
                        .font(.system(size: 32, weight: .light))
                        .frame(width: 44, height: 44)

                    VStack(alignment: .leading, spacing: 2) {
                        Text(item.kanji.meanings.joined(separator: ", "))
                            .font(.subheadline.weight(.medium))
                            .lineLimit(1)
                        Text("\(item.card.totalReviews) reviews · \(item.card.correctReviews) correct")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }

                    Spacer()

                    Text(String(format: "%.0f%%", item.card.accuracy * 100))
                        .font(.subheadline.weight(.bold))
                        .foregroundStyle(item.card.accuracy < 0.3 ? .red : .orange)
                }
                .padding(.vertical, 4)
                .accessibilityElement(children: .combine)
                .accessibilityLabel("\(item.kanji.id), \(item.kanji.meanings.first ?? ""), \(String(format: "%.0f", item.card.accuracy * 100)) percent accuracy after \(item.card.totalReviews) reviews")

                if item.kanji.id != items.last?.kanji.id {
                    Divider()
                }
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}

// MARK: - Recent Sessions
private struct RecentSessionsSection: View {
    @EnvironmentObject var appState: AppState

    private var recent: [StudySession] {
        Array(appState.sessionHistory.suffix(5).reversed())
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Recent Sessions")
                .font(.headline)

            ForEach(recent) { session in
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(session.date, style: .date)
                            .font(.subheadline.weight(.medium))
                        Text("\(session.reviewed) cards · \(session.durationSeconds / 60)m")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    Text(String(format: "%.0f%%", session.accuracy * 100))
                        .font(.subheadline.weight(.bold))
                        .foregroundStyle(session.accuracy >= 0.7 ? .green : .orange)
                }
                .padding(.vertical, 4)
                .accessibilityElement(children: .combine)
                .accessibilityLabel("Session: \(session.reviewed) cards reviewed, \(String(format: "%.0f", session.accuracy * 100)) percent accuracy, \(session.durationSeconds / 60) minutes")
                Divider()
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 18))
    }
}
