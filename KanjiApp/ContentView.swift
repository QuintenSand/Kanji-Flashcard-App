import SwiftUI

// MARK: - Root tab container
struct ContentView: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        TabView {
            LibraryView()
                .tabItem {
                    Label("Library", systemImage: "books.vertical.fill")
                }

            StudyView()
                .tabItem {
                    Label("Study", systemImage: "graduationcap.fill")
                }

            StatsView()
                .tabItem {
                    Label("Statistics", systemImage: "chart.bar.fill")
                }
        }
        .tint(.accentColor)
    }
}

#Preview {
    ContentView()
        .environmentObject(AppState())
}
