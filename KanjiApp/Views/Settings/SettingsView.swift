import SwiftUI
import UserNotifications

// MARK: - Settings Sheet

struct SettingsView: View {
    @EnvironmentObject var appState: AppState
    @Environment(\.dismiss) private var dismiss

    @State private var notificationTime: Date = Date()
    @State private var permissionDenied      = false
    @State private var showResetConfirmation = false

    // Read version + build from the bundle so it stays in sync with Xcode
    private var appVersion: String {
        let v = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String ?? "1.0"
        let b = Bundle.main.infoDictionary?["CFBundleVersion"]            as? String ?? "1"
        return "\(v) (\(b))"
    }

    var body: some View {
        NavigationStack {
            List {

                // ── Notifications ──────────────────────────────────────────
                Section {
                    HStack(spacing: 14) {
                        SettingsIcon(systemName: "bell.fill", color: .red)
                        Toggle("Daily Reminder", isOn: $appState.notificationsEnabled)
                            .onChange(of: appState.notificationsEnabled) { newValue in
                                handleToggle(newValue)
                            }
                    }

                    if appState.notificationsEnabled {
                        HStack(spacing: 14) {
                            SettingsIcon(systemName: "clock.fill", color: .orange)
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

                // ── Study ──────────────────────────────────────────────────
                Section("Study") {
                    Picker("Cards per session", selection: $appState.sessionSize) {
                        ForEach([5, 10, 15, 20], id: \.self) { n in
                            Text("\(n)").tag(n)
                        }
                    }
                    .pickerStyle(.segmented)
                }

                // ── Data ───────────────────────────────────────────────────
                Section {
                    Button(role: .destructive) {
                        showResetConfirmation = true
                    } label: {
                        HStack(spacing: 14) {
                            SettingsIcon(systemName: "arrow.counterclockwise", color: .red)
                            Text("Reset All Progress")
                                .foregroundStyle(.red)
                        }
                    }
                } header: {
                    Text("Data")
                } footer: {
                    Text("Permanently deletes all SRS review history, study dates, and session records. Your level and notification settings are kept.")
                        .font(.caption)
                }

                // ── About ──────────────────────────────────────────────────
                Section("About") {
                    LabeledContent("Version", value: appVersion)
                    LabeledContent("Kanji Database", value: "\(KanjiDatabase.all.count) kanji · N5–N1")
                    LabeledContent("Algorithm", value: "SM-2 Spaced Repetition")
                    Link(destination: URL(string: "https://github.com/QuintenSand/Kanji-Flashcard-App")!) {
                        HStack {
                            Text("Support & Source Code")
                                .foregroundStyle(.primary)
                            Spacer()
                            Image(systemName: "arrow.up.right")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
                    Link(destination: URL(string: "https://github.com/QuintenSand/Kanji-Flashcard-App/blob/main/PRIVACY.md")!) {
                        HStack {
                            Text("Privacy Policy")
                                .foregroundStyle(.primary)
                            Spacer()
                            Image(systemName: "arrow.up.right")
                                .font(.caption)
                                .foregroundStyle(.secondary)
                        }
                    }
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
            .confirmationDialog(
                "Reset All Progress?",
                isPresented: $showResetConfirmation,
                titleVisibility: .visible
            ) {
                Button("Reset Progress", role: .destructive) {
                    appState.resetProgress()
                }
                Button("Cancel", role: .cancel) {}
            } message: {
                Text("This will permanently delete all your review history and SRS data. This cannot be undone.")
            }
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
        guard enabled else { return }

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

// MARK: - Reusable icon cell background
private struct SettingsIcon: View {
    let systemName: String
    let color: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(color.gradient)
                .frame(width: 36, height: 36)
            Image(systemName: systemName)
                .font(.system(size: 17))
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    SettingsView()
        .environmentObject(AppState())
}
