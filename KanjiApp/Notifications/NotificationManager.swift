import UserNotifications
import Foundation

// MARK: - Notification Manager

final class NotificationManager {
    static let shared = NotificationManager()
    private init() {}

    private static let dailyID = "com.kanji.daily-review"

    // MARK: - Permission

    /// Requests authorisation; returns true if granted.
    func requestPermission() async -> Bool {
        do {
            return try await UNUserNotificationCenter.current()
                .requestAuthorization(options: [.alert, .badge, .sound])
        } catch {
            return false
        }
    }

    /// Returns the current authorisation status without prompting.
    func authorizationStatus() async -> UNAuthorizationStatus {
        await UNUserNotificationCenter.current().notificationSettings().authorizationStatus
    }

    // MARK: - Scheduling

    /// Schedules (or reschedules) the recurring daily reminder.
    /// Call this whenever the user changes their notification time or due-card count changes.
    func scheduleDailyReminder(hour: Int, minute: Int, dueCount: Int) {
        let center = UNUserNotificationCenter.current()
        center.removePendingNotificationRequests(withIdentifiers: [Self.dailyID])

        let content = UNMutableNotificationContent()

        if dueCount > 0 {
            content.title = "漢字の時間！ \(dueCount) card\(dueCount == 1 ? "" : "s") waiting"
            content.body  = "You have \(dueCount) kanji due for review. Keep that streak alive!"
            content.badge = NSNumber(value: dueCount)
        } else {
            content.title = "漢字の時間！ Time to study"
            content.body  = "Open the app to keep your kanji streak going!"
        }
        content.sound = .default

        var components = DateComponents()
        components.hour   = hour
        components.minute = minute

        let trigger = UNCalendarNotificationTrigger(dateMatching: components, repeats: true)
        let request  = UNNotificationRequest(
            identifier: Self.dailyID,
            content:    content,
            trigger:    trigger
        )
        center.add(request)
    }

    /// Cancels the daily reminder (called when the user turns off notifications).
    func cancelDailyReminder() {
        UNUserNotificationCenter.current()
            .removePendingNotificationRequests(withIdentifiers: [Self.dailyID])
    }

    // MARK: - Badge

    /// Clears the app badge when the user opens the app.
    func clearBadge() {
        UNUserNotificationCenter.current().setBadgeCount(0) { _ in }
    }
}
