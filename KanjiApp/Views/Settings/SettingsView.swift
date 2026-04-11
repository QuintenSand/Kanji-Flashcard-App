import SwiftUI
import UserNotifications

// MARK: - Settings Sheet

struct SettingsView: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) private var dismiss

    // Local binding for the DatePicker (hour + minute only)
    @State private var notificationTime: Date = Date()
    @State private var permissionDenied = false

    var body: some View {
        NavigationStack {
            List {
                // ── Notifications section ──────────────────────────────────
                Section {
                    // Toggle row
                    HStack(spacing: 14) {
                        ZStack {
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.red.gradient)
                                .frame(width: 36, height: 36)
                            Image(systemName: "bell.fill")
                                .font(.system(size: 17))
                                .foregroundStyle(.white)
                        }
                        Toggle("Daily Reminder", isOn: $appState.notificationsEnabled)
                            .onChange(of: appState.notificationsEnabled) { newValue in
                                handleToggle(newValue)
                            }
                    }

                    // Time picker — only visible when notifications are on
                    if appState.notificationsEnabled {
                        HStack(spacing: 14) {
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.orange.gradient)
                                    .frame(width: 36, height: 36)
                                Image(systemName: "clock.fill")
                                    .font(.system(size: 17))
                                    .foregroundStyle(.white)
                            }
                            DatePicker(
                                "Reminder Time",
                                selection: $notificationTime,
                                displayedComponents: .hourAndMinute
                            )
                            .onChange(of: notificationTime) { newTime in
                                let cal = Calendar.current
                                appState.notificationHour   = cal.component(.hour,   from: newTime)
                                appState.notificationMinute = cal.component(.minute, from: newTime)
                            }
                        }
                    }

                } header: {
                    Text("Notifications")
                } footer: {
                    if permissionDenied {
                        Label(
                            "Notifications are blocked. Go to Settings → Kanji Flashcard App → Notifications to allow them.",
                            systemImage: "exclamationmark.triangle"
                        )
                        .foregroundStyle(.orange)
                        .font(.caption)
                    } else if appState.notificationsEnabled {
                        Text("You'll get a daily nudge at the chosen time showing how many kanji cards are due.")
                            .font(.caption)
                    }
                }

                // ── Study section ──────────────────────────────────────────
                Section("Study") {
                    Picker("Cards per session", selection: $appState.sessionSize) {
                        ForEach([5, 10, 15, 20], id: \.self) { n in
                            Text("\(n)").tag(n)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                // ── About section ──────────────────────────────────────────
                Section("About") {
                    LabeledContent("Version", value: "1.0")
                    LabeledContent("Kanji Database", value: "497 kanji · N5–N1")
                    LabeledContent("Algorithm", value: "SM-2 Spaced Repetition")
                }
            }
            .navigationTitle("Settings")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Done") { dismiss() }
                }
            }
            .onAppear { syncTimePickerFromState() }
        }
    }

    // MARK: - Helpers

    private func syncTimePickerFromState() {
        var components        = DateComponents()
        components.hour       = appState.notificationHour
        components.minute     = appState.notificationMinute
        notificationTime      = Calendar.current.date(from: components) ?? Date()
    }

    private func handleToggle(_ enabled: Bool) {
        guard enabled else { return }   // turning off is handled by AppState didSet

        Task {
            let status = await NotificationManager.shared.authorizationStatus()
            switch status {
            case .notDetermined:
                let granted = await NotificationManager.shared.requestPermission()
                if !granted {
                    await MainActor.run { appState.notificationsEnabled = false }
                }
            case .denied:
                await MainActor.run {
                    appState.notificationsEnabled = false
                    permissionDenied = true
                }
            default:
                break
            }
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(AppState())
}
