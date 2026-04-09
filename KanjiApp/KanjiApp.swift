import SwiftUI

@main
struct KanjiApp: App {
    @StateObject private var appState = AppState()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appState)
                .onAppear {
                    // Clear badge whenever the app comes to the foreground
                    NotificationManager.shared.clearBadge()
                    // If notifications were already enabled from a previous session,
                    // re-schedule so the due count stays fresh.
                    if appState.notificationsEnabled {
                        appState.rescheduleNotification()
                    }
                }
        }
    }
}
