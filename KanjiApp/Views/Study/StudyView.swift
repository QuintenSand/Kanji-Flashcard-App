import SwiftUI

// MARK: - Study Home
struct StudyView: View {
    @EnvironmentObject var appState: AppState
    @State private var showLevelPicker = false
    @State private var showSession    = false

    private var dueKanji: [Kanji] {
        SRSEngine.dueCards(from: appState.cards, levels: appState.selectedLevels, limit: 30)
    }

    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 24) {

                    // ── Due today banner
                    DueTodayBanner(dueCount: dueKanji.count)
                        .padding(.horizontal)

                    // ── Level selector
                    VStack(alignment: .leading, spacing: 12) {
                        HStack {
                            Text("Study levels")
                                .font(.headline)
                            Spacer()
                            Button("Edit") { showLevelPicker = true }
                                .font(.subheadline)
                        }
                        .padding(.horizontal)

                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 10) {
                                ForEach(JLPTLevel.allCases, id: \.self) { level in
                                    LevelProgressCard(
                                        level: level,
                                        progress: appState.levelProgress(level),
                                        isSelected: appState.selectedLevels.contains(level)
                                    )
                                }
                            }
                            .padding(.horizontal)
                        }
                    }

                    // ── Start session button
                    Button {
                        showSession = true
                    } label: {
                        HStack {
                            Image(systemName: dueKanji.isEmpty ? "checkmark.circle.fill" : "play.fill")
                                .font(.title3)
                            Text(dueKanji.isEmpty ? "All caught up!" : "Start Review (\(dueKanji.count))")
                                .font(.headline)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(dueKanji.isEmpty ? Color(.systemGray4) : Color.accentColor)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    .disabled(dueKanji.isEmpty)
                    .padding(.horizontal)

                    // ── Quick stats strip
                    HStack(spacing: 0) {
                        StudyStatTile(value: "\(appState.learnedCount)",   label: "Learned",  icon: "books.vertical")
                        Divider().frame(height: 40)
                        StudyStatTile(value: "\(appState.masteredCount)",  label: "Mastered", icon: "star.fill")
                        Divider().frame(height: 40)
                        StudyStatTile(value: "\(appState.currentStreak)",  label: "Streak",   icon: "flame.fill")
                    }
                    .padding()
                    .background(Color(.secondarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    .padding(.horizontal)

                    Spacer(minLength: 32)
                }
                .padding(.top)
            }
            .navigationTitle("Study")
            .sheet(isPresented: $showLevelPicker) {
                LevelPickerSheet()
                    .environmentObject(appState)
            }
            .fullScreenCover(isPresented: $showSession) {
                SessionView(queue: dueKanji)
                    .environmentObject(appState)
            }
        }
    }
}

// MARK: - Due Today Banner
private struct DueTodayBanner: View {
    let dueCount: Int

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle().fill(Color.accentColor.opacity(0.15)).frame(width: 52, height: 52)
                Text("\(dueCount)")
                    .font(.title2.weight(.bold))
                    .foregroundStyle(Color.accentColor)
            }
            VStack(alignment: .leading, spacing: 2) {
                Text(dueCount == 0 ? "All done for today 🎉" : "Cards due today")
                    .font(.headline)
                Text(dueCount == 0
                     ? "Come back later for more reviews"
                     : "Keep your streak going!")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }
            Spacer()
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

// MARK: - Level progress card (horizontal scroll)
private struct LevelProgressCard: View {
    let level: JLPTLevel
    let progress: Double
    let isSelected: Bool

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
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(level.rawValue)
                    .font(.headline.weight(.bold))
                    .foregroundStyle(color)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundStyle(color)
                        .font(.caption)
                }
            }
            Text("\(level.kanjiCount) kanji")
                .font(.caption)
                .foregroundStyle(.secondary)

            GeometryReader { geo in
                ZStack(alignment: .leading) {
                    Capsule().fill(color.opacity(0.15)).frame(height: 6)
                    Capsule().fill(color)
                        .frame(width: geo.size.width * progress, height: 6)
                }
            }
            .frame(height: 6)

            Text(String(format: "%.0f%%", progress * 100))
                .font(.caption2.weight(.semibold))
                .foregroundStyle(color)
        }
        .padding(14)
        .frame(width: 130)
        .background(isSelected ? color.opacity(0.08) : Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(isSelected ? color : .clear, lineWidth: 2)
        )
    }
}

// MARK: - Stat tile
private struct StudyStatTile: View {
    let value: String
    let label: String
    let icon: String

    var body: some View {
        VStack(spacing: 4) {
            Image(systemName: icon)
                .font(.caption)
                .foregroundStyle(Color.accentColor)
            Text(value).font(.title3.weight(.bold))
            Text(label).font(.caption2).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
    }
}

// MARK: - Level Picker Sheet
struct LevelPickerSheet: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) var dismiss

    var body: some View {
        NavigationStack {
            List(JLPTLevel.allCases, id: \.self) { level in
                HStack {
                    LevelBadge(level: level)
                    VStack(alignment: .leading) {
                        Text("\(level.kanjiCount) kanji")
                            .font(.subheadline)
                        Text(String(format: "%.0f%% learned", appState.levelProgress(level) * 100))
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                    if appState.selectedLevels.contains(level) {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundStyle(.accentColor)
                    }
                }
                .contentShape(Rectangle())
                .onTapGesture {
                    if appState.selectedLevels.contains(level) {
                        if appState.selectedLevels.count > 1 {
                            appState.selectedLevels.remove(level)
                        }
                    } else {
                        appState.selectedLevels.insert(level)
                    }
                }
            }
            .navigationTitle("Select Levels")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
        }
        .presentationDetents([.medium])
    }
}
