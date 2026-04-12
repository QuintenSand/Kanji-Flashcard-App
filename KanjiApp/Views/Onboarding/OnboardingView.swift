import SwiftUI

// MARK: - Onboarding root
struct OnboardingView: View {
    @EnvironmentObject var appState: AppState
    @State private var page = 0

    // The level the user chooses on the last page
    @State private var chosenLevel: JLPTLevel = .N5

    private let totalPages = 4

    var body: some View {
        ZStack(alignment: .bottom) {
            // Swipeable page content
            TabView(selection: $page) {
                WelcomePage()
                    .tag(0)
                HowItWorksPage()
                    .tag(1)
                LevelsPage()
                    .tag(2)
                ChooseLevelPage(chosenLevel: $chosenLevel)
                    .tag(3)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .animation(.easeInOut, value: page)

            // Fixed bottom controls
            VStack(spacing: 20) {
                // Dot indicators
                HStack(spacing: 8) {
                    ForEach(0..<totalPages, id: \.self) { i in
                        Capsule()
                            .fill(i == page ? Color.accentColor : Color(.systemGray4))
                            .frame(width: i == page ? 20 : 8, height: 8)
                            .animation(.spring(response: 0.3), value: page)
                    }
                }

                // Next / Start button
                Button {
                    if page < totalPages - 1 {
                        withAnimation { page += 1 }
                    } else {
                        finishOnboarding()
                    }
                } label: {
                    Text(page < totalPages - 1 ? "Next" : "Start Learning")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.accentColor)
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 16))
                }
                .padding(.horizontal, 24)

                // Skip — hidden on the last page
                if page < totalPages - 1 {
                    Button("Skip") {
                        finishOnboarding()
                    }
                    .font(.subheadline)
                    .foregroundStyle(.secondary)
                } else {
                    Color.clear.frame(height: 20)
                }
            }
            .padding(.bottom, 44)
        }
        .ignoresSafeArea(edges: .top)
    }

    private func finishOnboarding() {
        appState.selectedLevels = [chosenLevel]
        appState.hasCompletedOnboarding = true
    }
}

// MARK: - Page 1: Welcome
private struct WelcomePage: View {
    @State private var appeared = false

    var body: some View {
        ZStack {
            // Soft gradient background
            LinearGradient(
                colors: [Color.accentColor.opacity(0.15), Color(.systemGroupedBackground)],
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Hero kanji
                ZStack {
                    Circle()
                        .fill(Color.accentColor.opacity(0.12))
                        .frame(width: 180, height: 180)
                    Text("漢")
                        .font(.system(size: 110, weight: .thin))
                        .foregroundStyle(Color.accentColor)
                }
                .scaleEffect(appeared ? 1 : 0.6)
                .opacity(appeared ? 1 : 0)

                Spacer().frame(height: 40)

                VStack(spacing: 12) {
                    Text("漢字フラッシュカード")
                        .font(.title3)
                        .foregroundStyle(.secondary)

                    Text("Kanji\nFlashcard App")
                        .font(.system(size: 38, weight: .bold))
                        .multilineTextAlignment(.center)

                    Spacer().frame(height: 8)

                    Text("Master all 1,318 JLPT kanji\nwith science-backed spaced repetition.")
                        .font(.body)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(4)
                }
                .opacity(appeared ? 1 : 0)
                .offset(y: appeared ? 0 : 20)

                Spacer()
                Spacer()
            }
            .padding(.horizontal, 32)
        }
        .onAppear {
            withAnimation(.spring(response: 0.6, dampingFraction: 0.7).delay(0.1)) {
                appeared = true
            }
        }
    }
}

// MARK: - Page 2: How it works
private struct HowItWorksPage: View {
    @State private var flipped    = false
    @State private var appeared   = false
    @State private var showRating = false

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer()

                // Header
                VStack(spacing: 10) {
                    Image(systemName: "rectangle.on.rectangle.angled")
                        .font(.system(size: 36))
                        .foregroundStyle(Color.accentColor)
                    Text("How it works")
                        .font(.title.weight(.bold))
                    Text("Tap a card to reveal the answer,\nthen rate how well you knew it.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .opacity(appeared ? 1 : 0)

                Spacer().frame(height: 36)

                // Mini flashcard demo
                ZStack {
                    // Front
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(.systemBackground))
                        .shadow(color: .black.opacity(0.08), radius: 16, y: 6)
                        .frame(height: 170)
                        .overlay {
                            VStack(spacing: 8) {
                                Text("N5").font(.caption.weight(.bold))
                                    .padding(.horizontal, 10).padding(.vertical, 4)
                                    .background(Color.green.opacity(0.15))
                                    .foregroundStyle(.green)
                                    .clipShape(Capsule())
                                Text("山")
                                    .font(.system(size: 72, weight: .thin))
                                if !flipped {
                                    Text("Tap to reveal")
                                        .font(.caption)
                                        .foregroundStyle(.tertiary)
                                }
                            }
                        }
                        .opacity(flipped ? 0 : 1)

                    // Back
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color(.systemBackground))
                        .shadow(color: .black.opacity(0.08), radius: 16, y: 6)
                        .frame(height: 170)
                        .overlay {
                            VStack(spacing: 6) {
                                Text("山").font(.system(size: 40, weight: .light))
                                Text("mountain").font(.title3.weight(.semibold))
                                Divider().padding(.horizontal, 40)
                                HStack(spacing: 20) {
                                    VStack(spacing: 2) {
                                        Text("On'yomi").font(.caption).foregroundStyle(.red)
                                        Text("サン").font(.callout.weight(.medium))
                                    }
                                    VStack(spacing: 2) {
                                        Text("Kun'yomi").font(.caption).foregroundStyle(.blue)
                                        Text("やま").font(.callout.weight(.medium))
                                    }
                                }
                            }
                        }
                        .opacity(flipped ? 1 : 0)
                        .rotation3DEffect(.degrees(180), axis: (x: 0, y: 1, z: 0))
                }
                .frame(maxWidth: 300)
                .rotation3DEffect(.degrees(flipped ? 180 : 0), axis: (x: 0, y: 1, z: 0))
                .onTapGesture {
                    withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                        flipped.toggle()
                    }
                    if !showRating {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                            withAnimation { showRating = true }
                        }
                    }
                }
                .opacity(appeared ? 1 : 0)
                .offset(y: appeared ? 0 : 30)

                Spacer().frame(height: 20)

                // Rating buttons (appear after first flip)
                if showRating {
                    HStack(spacing: 8) {
                        ForEach([("🔴","Again",.red), ("🟠","Hard",.orange),
                                 ("🟢","Good",.green), ("⭐️","Easy",Color.blue)],
                                id: \.1) { emoji, label, color in
                            VStack(spacing: 4) {
                                Text(emoji).font(.title3)
                                Text(label).font(.caption.weight(.semibold))
                            }
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(color.opacity(0.1))
                            .foregroundStyle(color)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .overlay(RoundedRectangle(cornerRadius: 12)
                                .stroke(color.opacity(0.3), lineWidth: 1))
                        }
                    }
                    .padding(.horizontal, 24)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }

                Spacer()
                Spacer()
            }
            .padding(.horizontal, 24)
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5).delay(0.1)) { appeared = true }
            // Auto-flip after 1.5 s so the user sees the demo without having to tap
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                guard !flipped else { return }
                withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) { flipped = true }
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35) {
                    withAnimation { showRating = true }
                }
            }
        }
    }
}

// MARK: - Page 3: JLPT Levels explained
private struct LevelsPage: View {
    @State private var appeared = false

    private let levels: [(JLPTLevel, String, String)] = [
        (.N5, "Beginner",          "Basic kanji — numbers, time, family, directions"),
        (.N4, "Elementary",        "Everyday actions, places, and common adjectives"),
        (.N3, "Intermediate",      "Society, nature, emotions, and abstract ideas"),
        (.N2, "Upper-Intermediate","Formal writing, compound words, and nuanced vocab"),
        (.N1, "Advanced",          "Literature, specialist fields, and rare usage"),
    ]

    private func color(for level: JLPTLevel) -> Color {
        switch level {
        case .N5: return .green
        case .N4: return .blue
        case .N3: return .orange
        case .N2: return .purple
        case .N1: return .red
        }
    }

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer().frame(height: 60)

                VStack(spacing: 10) {
                    Image(systemName: "list.number")
                        .font(.system(size: 36))
                        .foregroundStyle(Color.accentColor)
                    Text("JLPT Levels")
                        .font(.title.weight(.bold))
                    Text("Choose how deep you want to go.\nN5 is the friendliest place to start.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .opacity(appeared ? 1 : 0)

                Spacer().frame(height: 28)

                VStack(spacing: 10) {
                    ForEach(Array(levels.enumerated()), id: \.offset) { idx, item in
                        let (level, subtitle, desc) = item
                        let c = color(for: level)
                        HStack(spacing: 14) {
                            // Level badge
                            Text(level.rawValue)
                                .font(.subheadline.weight(.bold))
                                .frame(width: 40)
                                .padding(.vertical, 6)
                                .background(c.opacity(0.15))
                                .foregroundStyle(c)
                                .clipShape(RoundedRectangle(cornerRadius: 8))

                            VStack(alignment: .leading, spacing: 2) {
                                HStack {
                                    Text(subtitle).font(.subheadline.weight(.semibold))
                                    Spacer()
                                    Text("\(level.kanjiCount) kanji")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                                Text(desc)
                                    .font(.caption)
                                    .foregroundStyle(.secondary)
                                    .lineLimit(2)
                            }
                        }
                        .padding(12)
                        .background(Color(.systemBackground))
                        .clipShape(RoundedRectangle(cornerRadius: 14))
                        .opacity(appeared ? 1 : 0)
                        .offset(y: appeared ? 0 : 20)
                        .animation(.easeOut(duration: 0.4).delay(Double(idx) * 0.07 + 0.15),
                                   value: appeared)
                    }
                }
                .padding(.horizontal, 24)

                Spacer()
                Spacer()
            }
        }
        .onAppear {
            withAnimation { appeared = true }
        }
    }
}

// MARK: - Page 4: Choose starting level
private struct ChooseLevelPage: View {
    @Binding var chosenLevel: JLPTLevel
    @State private var appeared = false

    private func color(for level: JLPTLevel) -> Color {
        switch level {
        case .N5: return .green
        case .N4: return .blue
        case .N3: return .orange
        case .N2: return .purple
        case .N1: return .red
        }
    }

    private let descriptions: [JLPTLevel: String] = [
        .N5: "Perfect if you're just starting out.",
        .N4: "You know the basics and want more.",
        .N3: "Ready for intermediate territory.",
        .N2: "Targeting business or university Japanese.",
        .N1: "Aiming for near-native fluency.",
    ]

    var body: some View {
        ZStack {
            Color(.systemGroupedBackground).ignoresSafeArea()

            VStack(spacing: 0) {
                Spacer().frame(height: 60)

                VStack(spacing: 10) {
                    Image(systemName: "hand.tap.fill")
                        .font(.system(size: 36))
                        .foregroundStyle(Color.accentColor)
                    Text("Where do you start?")
                        .font(.title.weight(.bold))
                    Text("Pick the level that matches your Japanese.\nYou can always add more in Settings.")
                        .font(.subheadline)
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                }
                .opacity(appeared ? 1 : 0)

                Spacer().frame(height: 28)

                VStack(spacing: 10) {
                    ForEach(JLPTLevel.allCases, id: \.self) { level in
                        let c = color(for: level)
                        let isSelected = chosenLevel == level
                        Button { withAnimation(.spring(response: 0.3)) { chosenLevel = level } } label: {
                            HStack(spacing: 14) {
                                ZStack {
                                    Circle()
                                        .stroke(c.opacity(0.4), lineWidth: 2)
                                        .frame(width: 24, height: 24)
                                    if isSelected {
                                        Circle()
                                            .fill(c)
                                            .frame(width: 14, height: 14)
                                    }
                                }

                                VStack(alignment: .leading, spacing: 2) {
                                    HStack {
                                        Text(level.rawValue)
                                            .font(.subheadline.weight(.bold))
                                            .foregroundStyle(c)
                                        Spacer()
                                        Text("\(level.kanjiCount) kanji")
                                            .font(.caption)
                                            .foregroundStyle(.secondary)
                                    }
                                    Text(descriptions[level] ?? "")
                                        .font(.caption)
                                        .foregroundStyle(.secondary)
                                }
                            }
                            .padding(14)
                            .background(
                                isSelected ? c.opacity(0.08) : Color(.systemBackground)
                            )
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                            .overlay(
                                RoundedRectangle(cornerRadius: 14)
                                    .stroke(isSelected ? c : Color.clear, lineWidth: 2)
                            )
                        }
                        .buttonStyle(.plain)
                    }
                }
                .padding(.horizontal, 24)
                .opacity(appeared ? 1 : 0)
                .offset(y: appeared ? 0 : 20)

                Spacer()
                Spacer()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.45).delay(0.1)) { appeared = true }
        }
    }
}

#Preview {
    OnboardingView()
        .environmentObject(AppState())
}
