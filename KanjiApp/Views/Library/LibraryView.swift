import SwiftUI

// MARK: - Library Root View
struct LibraryView: View {
    @EnvironmentObject var appState: AppState
    @State private var searchText = ""
    @State private var selectedLevel: JLPTLevel? = nil

    private var filteredKanji: [Kanji] {
        var list = KanjiDatabase.all
        if let level = selectedLevel { list = list.filter { $0.level == level } }
        if !searchText.isEmpty {
            list = list.filter {
                $0.id.contains(searchText) ||
                $0.meanings.joined().localizedCaseInsensitiveContains(searchText) ||
                $0.onyomi.joined().contains(searchText) ||
                $0.kunyomi.joined().contains(searchText)
            }
        }
        return list
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 0) {
                // ── Search bar
                HStack {
                    Image(systemName: "magnifyingglass")
                        .foregroundStyle(.secondary)
                    TextField("Search kanji, meaning, reading…", text: $searchText)
                        .autocorrectionDisabled()
                }
                .padding(12)
                .background(Color(.systemGray6))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
                .padding(.top, 8)

                // ── Level filter chips
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 8) {
                        LevelChip(label: "All", isSelected: selectedLevel == nil) {
                            selectedLevel = nil
                        }
                        ForEach(JLPTLevel.allCases, id: \.self) { level in
                            LevelChip(label: level.rawValue, isSelected: selectedLevel == level) {
                                selectedLevel = selectedLevel == level ? nil : level
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 12)
                }

                Divider()

                // ── Kanji grid
                if filteredKanji.isEmpty {
                    Spacer()
                    VStack(spacing: 12) {
                        Image(systemName: "character.magnify")
                            .font(.system(size: 48))
                            .foregroundStyle(.secondary)
                        Text("No kanji found")
                            .foregroundStyle(.secondary)
                    }
                    Spacer()
                } else {
                    ScrollView {
                        LazyVGrid(columns: [GridItem(.adaptive(minimum: 80), spacing: 12)], spacing: 12) {
                            ForEach(filteredKanji) { kanji in
                                NavigationLink(destination: KanjiDetailView(kanji: kanji)) {
                                    KanjiGridCell(kanji: kanji, card: appState.cards[kanji.id])
                                }
                                .buttonStyle(.plain)
                            }
                        }
                        .padding()
                    }
                    // Without maxHeight: .infinity the VStack gives ScrollView its full
                    // content height, so SwiftUI thinks there is nothing to scroll.
                    .frame(maxHeight: .infinity)
                }
            }
            .navigationTitle("Library")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

// MARK: - Level Filter Chip
private struct LevelChip: View {
    let label: String
    let isSelected: Bool
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.subheadline.weight(.semibold))
                .padding(.horizontal, 14)
                .padding(.vertical, 6)
                .background(isSelected ? Color.accentColor : Color(.systemGray5))
                .foregroundStyle(isSelected ? .white : .primary)
                .clipShape(Capsule())
        }
        .accessibilityLabel("Filter \(label)\(isSelected ? ", active" : "")")
        .accessibilityAddTraits(isSelected ? .isSelected : [])
    }
}

// MARK: - Kanji Grid Cell
struct KanjiGridCell: View {
    let kanji: Kanji
    let card: SRSCard?

    private var statusColor: Color {
        guard let card else { return Color(.systemGray5) }
        if card.interval >= 21 { return .green }
        if card.repetitions > 0 { return .blue }
        return Color(.systemGray5)
    }

    private var statusLabel: String {
        guard let card else { return "not started" }
        if card.interval >= 21 { return "mastered" }
        if card.repetitions > 0 { return "in progress" }
        return "not started"
    }

    var body: some View {
        VStack(spacing: 4) {
            Text(kanji.id)
                .font(.system(size: 32, weight: .medium))
            Text(kanji.primaryMeaning)
                .font(.caption2)
                .foregroundStyle(.secondary)
                .lineLimit(1)
        }
        .frame(width: 80, height: 80)
        .background(Color(.systemBackground))
        .overlay(
            RoundedRectangle(cornerRadius: 14)
                .stroke(statusColor, lineWidth: card != nil ? 2 : 1)
        )
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .shadow(color: .black.opacity(0.05), radius: 4, y: 2)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(kanji.id), \(kanji.primaryMeaning), \(kanji.level.displayName), \(statusLabel)")
        .accessibilityHint("Double-tap to view details")
    }
}

// MARK: - Kanji Detail View
struct KanjiDetailView: View {
    let kanji: Kanji
    @EnvironmentObject var appState: AppState

    private var card: SRSCard? { appState.cards[kanji.id] }

    var body: some View {
        ScrollView {
            VStack(spacing: 24) {
                // ── Big kanji display
                VStack(spacing: 8) {
                    Text(kanji.id)
                        .font(.system(size: 96, weight: .thin))
                        .padding(.top, 16)
                    LevelBadge(level: kanji.level)
                    Text(kanji.meanings.joined(separator: " · "))
                        .font(.title3.weight(.medium))
                        .multilineTextAlignment(.center)
                }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 20))
                .padding(.horizontal)

                // ── Readings
                HStack(spacing: 16) {
                    ReadingCard(title: "On'yomi", reading: kanji.onyomiDisplay, color: .red)
                    ReadingCard(title: "Kun'yomi", reading: kanji.kunyomiDisplay, color: .blue)
                }
                .padding(.horizontal)

                // ── Stroke count
                HStack {
                    Label("\(kanji.strokeCount) strokes", systemImage: "pencil")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                    Spacer()
                }
                .padding(.horizontal)

                // ── Examples
                if !kanji.examples.isEmpty {
                    VStack(alignment: .leading, spacing: 12) {
                        Text("Examples")
                            .font(.headline)
                            .padding(.horizontal)
                        ForEach(kanji.examples, id: \.word) { ex in
                            ExampleRow(example: ex)
                        }
                    }
                }

                // ── SRS progress (if studied)
                if let card {
                    SRSProgressCard(card: card)
                        .padding(.horizontal)
                }

                Spacer(minLength: 32)
            }
        }
        .navigationTitle(kanji.id)
        .navigationBarTitleDisplayMode(.inline)
    }
}

// MARK: - Sub-components
private struct ReadingCard: View {
    let title: String
    let reading: String
    let color: Color

    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(title)
                .font(.caption.weight(.semibold))
                .foregroundStyle(color)
            Text(reading)
                .font(.body)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(title): \(reading)")
    }
}

private struct ExampleRow: View {
    let example: KanjiExample

    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text(example.word)
                    .font(.body.weight(.medium))
                Text(example.reading)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
            Spacer()
            Text(example.meaning)
                .font(.subheadline)
                .foregroundStyle(.secondary)
        }
        .padding(.horizontal)
        .padding(.vertical, 8)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .padding(.horizontal)
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(example.word), read as \(example.reading), meaning \(example.meaning)")
    }
}

private struct SRSProgressCard: View {
    let card: SRSCard

    private var statusLabel: String {
        if card.interval >= 21 { return "Mastered" }
        if card.repetitions > 0 { return "In Progress" }
        return "Not Started"
    }
    private var statusColor: Color {
        if card.interval >= 21 { return .green }
        if card.repetitions > 0 { return .blue }
        return .gray
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("SRS Progress")
                .font(.headline)

            HStack {
                VStack(alignment: .leading) {
                    Text("Status").font(.caption).foregroundStyle(.secondary)
                    Text(statusLabel).font(.subheadline.weight(.semibold)).foregroundStyle(statusColor)
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Next Review").font(.caption).foregroundStyle(.secondary)
                    Text(card.nextReviewDate, style: .relative)
                        .font(.subheadline.weight(.semibold))
                }
            }

            HStack {
                StatPill(label: "Reviews", value: "\(card.totalReviews)")
                StatPill(label: "Accuracy", value: String(format: "%.0f%%", card.accuracy * 100))
                StatPill(label: "Interval", value: "\(card.interval)d")
            }
        }
        .padding()
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

struct StatPill: View {
    let label: String
    let value: String

    var body: some View {
        VStack(spacing: 2) {
            Text(value).font(.subheadline.weight(.bold))
            Text(label).font(.caption2).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(label): \(value)")
    }
}

struct LevelBadge: View {
    let level: JLPTLevel

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
        Text(level.rawValue)
            .font(.caption.weight(.bold))
            .padding(.horizontal, 10)
            .padding(.vertical, 4)
            .background(color.opacity(0.15))
            .foregroundStyle(color)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(color.opacity(0.3), lineWidth: 1))
            .accessibilityLabel("JLPT \(level.rawValue)")
    }
}
