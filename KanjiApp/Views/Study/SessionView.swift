import SwiftUI

// MARK: - Flash-card session (full-screen)
struct SessionView: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) var dismiss
    @Environment(\.accessibilityReduceMotion) var reduceMotion

    // Mutable active queue — "Again" cards get appended for re-review
    @State private var activeQueue: [Kanji]
    // Original count kept for the progress bar denominator so it never shrinks
    private let originalCount: Int

    @State private var currentIndex  = 0
    @State private var isFlipped     = false
    @State private var dragOffset    = CGSize.zero
    @State private var sessionStart  = Date()
    @State private var reviewed      = 0
    @State private var correct       = 0
    @State private var showSummary   = false
    @State private var cardOpacity   = 1.0
    @State private var cardRotation  = 0.0
    @State private var sessionSaved  = false   // guard against double-recording

    init(queue: [Kanji]) {
        self._activeQueue  = State(initialValue: queue)
        self.originalCount = queue.count
    }

    private var currentKanji: Kanji? {
        guard currentIndex < activeQueue.count else { return nil }
        return activeQueue[currentIndex]
    }

    // Cards available for another practice round (computed lazily when summary appears)
    private var nextPracticeQueue: [Kanji] {
        SRSEngine.practiceCards(
            from: appState.cards,
            levels: appState.selectedLevels,
            limit: appState.sessionSize
        )
    }

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).ignoresSafeArea()

            if showSummary || currentIndex >= activeQueue.count {
                SessionSummaryView(
                    reviewed: reviewed,
                    correct: correct,
                    duration: Int(Date().timeIntervalSince(sessionStart)),
                    onDone: {
                        saveSessionIfNeeded()
                        dismiss()
                    },
                    onPracticeMore: nextPracticeQueue.isEmpty ? nil : {
                        startNewPracticeRound()
                    }
                )
                .onAppear { saveSessionIfNeeded() }
            } else {
                VStack(spacing: 0) {
                    // ── Header
                    HStack {
                        Button { confirmQuit() } label: {
                            Image(systemName: "xmark")
                                .font(.body.weight(.semibold))
                                .foregroundStyle(.primary)
                                .padding(8)
                                .background(Color(.systemGray5))
                                .clipShape(Circle())
                        }
                        .accessibilityLabel("End session")
                        .accessibilityHint("Ends the current study session and shows your results")
                        Spacer()
                        // Show "reviewed / original" — doesn't shrink when cards are re-queued
                        Text("\(min(currentIndex + 1, activeQueue.count)) / \(max(originalCount, activeQueue.count))")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                            .accessibilityLabel("Card \(min(currentIndex + 1, activeQueue.count)) of \(max(originalCount, activeQueue.count))")
                        Spacer()
                        // accuracy badge
                        if reviewed > 0 {
                            Text(String(format: "%.0f%%", Double(correct)/Double(reviewed)*100))
                                .font(.subheadline.weight(.semibold))
                                .foregroundStyle(.green)
                                .padding(8)
                                .background(Color.green.opacity(0.1))
                                .clipShape(Capsule())
                                .accessibilityLabel("Accuracy \(String(format: "%.0f", Double(correct)/Double(reviewed)*100)) percent")
                        } else {
                            Color.clear.frame(width: 44, height: 44)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.top, 16)

                    // ── Progress bar (based on original count so it never goes backward)
                    GeometryReader { geo in
                        ZStack(alignment: .leading) {
                            Capsule().fill(Color(.systemGray5)).frame(height: 4)
                            Capsule().fill(Color.accentColor)
                                .frame(
                                    width: geo.size.width * CGFloat(currentIndex) / CGFloat(max(1, activeQueue.count)),
                                    height: 4
                                )
                                .animation(reduceMotion ? .none : .easeInOut, value: currentIndex)
                        }
                    }
                    .frame(height: 4)
                    .padding(.horizontal)
                    .padding(.top, 12)
                    .accessibilityElement()
                    .accessibilityLabel("Session progress")
                    .accessibilityValue("\(currentIndex) of \(max(originalCount, activeQueue.count)) cards completed")

                    Spacer()

                    // ── Card
                    if let kanji = currentKanji {
                        FlashCard(kanji: kanji, isFlipped: isFlipped)
                            .rotation3DEffect(.degrees(cardRotation), axis: (x: 0, y: 1, z: 0))
                            .opacity(cardOpacity)
                            .offset(x: dragOffset.width)
                            .gesture(
                                DragGesture()
                                    .onChanged { v in dragOffset = v.translation }
                                    .onEnded   { v in handleSwipe(v.translation.width) }
                            )
                            .onTapGesture { flipCard() }
                            .padding(.horizontal, 20)
                            .accessibilityElement(children: .combine)
                            .accessibilityLabel(isFlipped
                                ? "\(kanji.id), \(kanji.meanings.joined(separator: ", ")). On'yomi: \(kanji.onyomiDisplay). Kun'yomi: \(kanji.kunyomiDisplay)"
                                : "Kanji \(kanji.id), \(kanji.level.displayName)")
                            .accessibilityHint(isFlipped ? "Swipe right for easy, left for again, or use the rating buttons below" : "Double-tap to reveal the answer")
                            .accessibilityAddTraits(.isButton)
                    }

                    Spacer()

                    // ── Hint (tap to reveal) / Rating buttons
                    if !isFlipped {
                        Button { flipCard() } label: {
                            Text("Tap to reveal")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                                .padding(.vertical, 8)
                        }
                        .padding(.bottom, 40)
                    } else {
                        RatingButtonRow { rating in
                            submitRating(rating)
                        }
                        .padding(.horizontal)
                        .padding(.bottom, 40)
                    }
                }
            }
        }
    }

    // MARK: - Actions

    private func flipCard() {
        if reduceMotion {
            cardRotation = isFlipped ? 0 : 180
            isFlipped.toggle()
        } else {
            withAnimation(.spring(response: 0.4, dampingFraction: 0.7)) {
                cardRotation = isFlipped ? 0 : 180
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                isFlipped.toggle()
            }
        }
    }

    private func submitRating(_ rating: ReviewRating) {
        guard let kanji = currentKanji else { return }
        appState.recordReview(kanjiID: kanji.id, rating: rating)
        reviewed += 1
        if rating == .good || rating == .easy { correct += 1 }

        // Re-queue "Again" cards so the user sees them again this session
        if rating == .again {
            activeQueue.append(kanji)
        }

        animateCardOut {
            currentIndex += 1
            isFlipped    = false
            dragOffset   = .zero
            cardRotation = 0
        }
    }

    private func handleSwipe(_ dx: CGFloat) {
        if abs(dx) > 120 && isFlipped {
            submitRating(dx > 0 ? .easy : .again)
        } else {
            withAnimation(.spring()) { dragOffset = .zero }
        }
    }

    private func animateCardOut(completion: @escaping () -> Void) {
        if reduceMotion {
            completion()
        } else {
            withAnimation(.easeOut(duration: 0.2)) { cardOpacity = 0 }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                completion()
                withAnimation(.easeIn(duration: 0.2)) { cardOpacity = 1 }
            }
        }
    }

    private func confirmQuit() {
        saveSessionIfNeeded()
        showSummary = true
    }

    private func saveSessionIfNeeded() {
        guard !sessionSaved else { return }
        sessionSaved = true
        let session = StudySession(
            date: sessionStart,
            reviewed: reviewed,
            correct: correct,
            durationSeconds: Int(Date().timeIntervalSince(sessionStart)),
            levels: Array(appState.selectedLevels.map { $0.rawValue })
        )
        appState.recordSession(session)
    }

    /// Reset all session state and start another practice round without dismissing.
    private func startNewPracticeRound() {
        let newQueue = nextPracticeQueue
        guard !newQueue.isEmpty else { return }
        activeQueue  = newQueue
        currentIndex = 0
        reviewed     = 0
        correct      = 0
        isFlipped    = false
        dragOffset   = .zero
        cardRotation = 0
        cardOpacity  = 1
        showSummary  = false
        sessionSaved = false
        sessionStart = Date()
    }
}

// MARK: - Flash Card View
struct FlashCard: View {
    let kanji: Kanji
    let isFlipped: Bool

    var body: some View {
        ZStack {
            // Front (kanji character)
            VStack(spacing: 16) {
                LevelBadge(level: kanji.level)
                Text(kanji.id)
                    .font(.system(size: 120, weight: .thin))
                    .minimumScaleFactor(0.5)
                Text("What does this mean?")
                    .font(.subheadline)
                    .foregroundStyle(.tertiary)
            }
            .opacity(isFlipped ? 0 : 1)
            .frame(maxWidth: .infinity, maxHeight: .infinity)

            // Back (meaning + readings)
            VStack(spacing: 20) {
                Text(kanji.id)
                    .font(.system(size: 60, weight: .light))

                Text(kanji.meanings.joined(separator: " · "))
                    .font(.title2.weight(.semibold))
                    .multilineTextAlignment(.center)

                Divider().padding(.horizontal, 40)

                HStack(spacing: 32) {
                    VStack(spacing: 4) {
                        Text("On'yomi").font(.caption).foregroundStyle(.red)
                        Text(kanji.onyomiDisplay).font(.body.weight(.medium))
                    }
                    VStack(spacing: 4) {
                        Text("Kun'yomi").font(.caption).foregroundStyle(.blue)
                        Text(kanji.kunyomiDisplay).font(.body.weight(.medium))
                    }
                }

                if let ex = kanji.examples.first {
                    VStack(spacing: 2) {
                        Text(ex.word).font(.title3.weight(.medium))
                        Text(ex.reading).font(.caption).foregroundStyle(.secondary)
                        Text(ex.meaning).font(.caption).foregroundStyle(.secondary)
                    }
                    .padding(12)
                    .background(Color(.tertiarySystemBackground))
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                }
            }
            .opacity(isFlipped ? 1 : 0)
            .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
        .frame(height: 420)
        .background(Color(.systemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 28))
        .shadow(color: .black.opacity(0.08), radius: 20, y: 8)
    }
}

// MARK: - Rating Button Row
struct RatingButtonRow: View {
    let onRate: (ReviewRating) -> Void

    var body: some View {
        HStack(spacing: 10) {
            ForEach([ReviewRating.again, .hard, .good, .easy], id: \.rawValue) { rating in
                Button { onRate(rating) } label: {
                    VStack(spacing: 4) {
                        Text(rating.emoji).font(.title3)
                        Text(rating.label).font(.caption.weight(.semibold))
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 12)
                    .background(ratingColor(rating).opacity(0.1))
                    .foregroundStyle(ratingColor(rating))
                    .clipShape(RoundedRectangle(cornerRadius: 14))
                    .overlay(
                        RoundedRectangle(cornerRadius: 14)
                            .stroke(ratingColor(rating).opacity(0.3), lineWidth: 1)
                    )
                }
                .accessibilityLabel("Rate \(rating.label)")
                .accessibilityHint(ratingHint(rating))
            }
        }
    }

    private func ratingHint(_ r: ReviewRating) -> String {
        switch r {
        case .again: return "You didn't remember this kanji. It will appear again soon."
        case .hard:  return "You found this kanji difficult. The interval will be short."
        case .good:  return "You remembered this kanji correctly."
        case .easy:  return "This kanji was easy. The interval will increase more."
        }
    }

    private func ratingColor(_ r: ReviewRating) -> Color {
        switch r {
        case .again: return .red
        case .hard:  return .orange
        case .good:  return .green
        case .easy:  return .blue
        }
    }
}

// MARK: - Session Summary
struct SessionSummaryView: View {
    let reviewed: Int
    let correct: Int
    let duration: Int
    let onDone: () -> Void
    var onPracticeMore: (() -> Void)? = nil   // nil = button hidden

    private var accuracy: Double {
        guard reviewed > 0 else { return 0 }
        return Double(correct) / Double(reviewed)
    }

    private var durationString: String {
        let m = duration / 60, s = duration % 60
        return m > 0 ? "\(m)m \(s)s" : "\(s)s"
    }

    var body: some View {
        VStack(spacing: 32) {
            Spacer()

            // Emoji celebration
            Text(accuracy >= 0.8 ? "🎉" : accuracy >= 0.5 ? "👍" : "📚")
                .font(.system(size: 72))

            VStack(spacing: 8) {
                Text("Session Complete!")
                    .font(.title.weight(.bold))
                Text("Great work keeping up your practice.")
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
            }

            // Stats grid
            HStack(spacing: 16) {
                SummaryTile(value: "\(reviewed)",  label: "Reviewed",   color: .blue)
                SummaryTile(value: "\(correct)",   label: "Correct",    color: .green)
                SummaryTile(value: String(format: "%.0f%%", accuracy * 100), label: "Accuracy", color: accuracy >= 0.7 ? .green : .orange)
                SummaryTile(value: durationString, label: "Duration",   color: .purple)
            }
            .padding(.horizontal)

            Spacer()

            VStack(spacing: 12) {
                // Keep Practicing — only shown when there are more cards to review
                if let practiceMore = onPracticeMore {
                    Button(action: practiceMore) {
                        HStack {
                            Image(systemName: "arrow.clockwise.circle.fill")
                                .font(.title3)
                            Text("Keep Practicing")
                                .font(.headline)
                        }
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                    }
                    .padding(.horizontal)
                }

                Button(action: onDone) {
                    Text("Back to Study")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(onPracticeMore == nil ? Color.accentColor : Color(.systemGray5))
                        .foregroundStyle(onPracticeMore == nil ? Color.white : Color.primary)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.horizontal)
                .padding(.bottom, 40)
            }
        }
    }
}

private struct SummaryTile: View {
    let value: String
    let label: String
    let color: Color

    var body: some View {
        VStack(spacing: 4) {
            Text(value).font(.title2.weight(.bold)).foregroundStyle(color)
            Text(label).font(.caption).foregroundStyle(.secondary)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .background(color.opacity(0.08))
        .clipShape(RoundedRectangle(cornerRadius: 14))
        .accessibilityElement(children: .combine)
        .accessibilityLabel("\(label): \(value)")
    }
}
