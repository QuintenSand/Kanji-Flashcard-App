import SwiftUI

// MARK: - Root tab container
struct ContentView: View {
    @EnvironmentObject var appState: AppState
    @State private var showSettings = false

    var body: some View {
        TabView {
            LibraryView()
                .environmentObject(appState)
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }

            StudyView()
                .environmentObject(appState)
                .tabItem {
                    Label("Study", systemImage: "graduationcap.fill")
                }

            StatsView()
                .environmentObject(appState)
                .tabItem {
                    Label("Statistics", systemImage: "chart.bar.fill")
                }
        }
        .tint(Color.accentColor)
        .fullScreenCover(isPresented: Binding(
            get: { !appState.hasCompletedOnboarding },
            set: { if !$0 { appState.hasCompletedOnboarding = true } }
        )) {
            OnboardingView()
                .environmentObject(appState)
        }
        .overlay(alignment: .topTrailing) {
            // Gear button floated over every tab so it's always accessible
            Button {
                showSettings = true
            } label: {
                Image(systemName: "gearshape.fill")
                    .font(.system(size: 17, weight: .medium))
                    .foregroundStyle(.secondary)
                    .padding(10)
                    .background(.regularMaterial, in: Circle())
            }
            .padding(.top, 56)
            .padding(.trailing, 16)
            .accessibilityLabel("Settings")
            .accessibilityHint("Opens app settings including notifications, session size, and data management")
        }
        .sheet(isPresented: $showSettings) {
            SettingsView()
                .environmentObject(appState)
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
