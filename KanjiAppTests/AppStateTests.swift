import XCTest
@testable import KanjiApp

final class AppStateTests: XCTestCase {

    /// Creates a fresh AppState with a clean UserDefaults suite for isolation.
    private func makeCleanState() -> AppState {
        // Clear all known keys to isolate tests
        let keys = [
            "srs_cards_v1", "study_dates_v1", "session_history_v1",
            "selected_levels_v1", "session_size_v1",
            "notifications_enabled_v1", "notification_hour_v1",
            "notification_minute_v1", "has_completed_onboarding_v1"
        ]
        for key in keys {
            UserDefaults.standard.removeObject(forKey: key)
        }
        return AppState()
    }

    // MARK: - Initial State

    func testInitialStateDefaults() {
        let state = makeCleanState()

        XCTAssertTrue(state.cards.isEmpty)
        XCTAssertTrue(state.studyDates.isEmpty)
        XCTAssertTrue(state.sessionHistory.isEmpty)
        XCTAssertEqual(state.selectedLevels, [.N5])
        XCTAssertEqual(state.sessionSize, 10)
        XCTAssertFalse(state.hasCompletedOnboarding)
        XCTAssertFalse(state.notificationsEnabled)
        XCTAssertEqual(state.notificationHour, 9)
        XCTAssertEqual(state.notificationMinute, 0)
    }

    // MARK: - Computed Stats (Empty State)

    func testStatsWithNoData() {
        let state = makeCleanState()

        XCTAssertEqual(state.currentStreak, 0)
        XCTAssertEqual(state.longestStreak, 0)
        XCTAssertEqual(state.totalReviewed, 0)
        XCTAssertEqual(state.totalCorrect, 0)
        XCTAssertEqual(state.overallAccuracy, 0)
        XCTAssertEqual(state.masteredCount, 0)
        XCTAssertEqual(state.learnedCount, 0)
        XCTAssertEqual(state.dueCount, 0)
    }

    // MARK: - Current Streak

    func testCurrentStreakOneDay() {
        let state = makeCleanState()
        let today = Calendar.current.startOfDay(for: Date())
        state.studyDates = [today]

        XCTAssertEqual(state.currentStreak, 1)
    }

    func testCurrentStreakConsecutiveDays() {
        let state = makeCleanState()
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())

        state.studyDates = [
            cal.date(byAdding: .day, value: -2, to: today)!,
            cal.date(byAdding: .day, value: -1, to: today)!,
            today
        ]

        XCTAssertEqual(state.currentStreak, 3)
    }

    func testCurrentStreakBrokenByGap() {
        let state = makeCleanState()
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())

        state.studyDates = [
            cal.date(byAdding: .day, value: -5, to: today)!,
            cal.date(byAdding: .day, value: -4, to: today)!,
            // gap on day -3 and -2
            cal.date(byAdding: .day, value: -1, to: today)!,
            today
        ]

        XCTAssertEqual(state.currentStreak, 2, "Streak should only count consecutive days up to today")
    }

    func testCurrentStreakZeroWhenNoStudyToday() {
        let state = makeCleanState()
        let cal = Calendar.current
        let yesterday = cal.date(byAdding: .day, value: -1, to: cal.startOfDay(for: Date()))!

        // Only studied yesterday but not today
        state.studyDates = [yesterday]

        // The streak algorithm checks from today backwards.
        // If today hasn't been studied, streak is 0 (since no match on today).
        // Actually, let's check: the algorithm starts at today and checks if that day was studied.
        // If yesterday was studied but not today, the while loop breaks immediately.
        // Wait - let me re-read: it starts at today, checks if studied, if not → break → streak = 0
        // But actually if yesterday was studied, we'd want streak = 1 still? No - current streak
        // means "how many consecutive days ending today". If you didn't study today, it's 0.
        //
        // Hmm, the implementation checks:
        //   checkDate = today → studied? no → break → streak = 0
        // This means if you studied yesterday but not today, your current streak is 0.
        // That's a valid design choice (study today to keep your streak).
        XCTAssertEqual(state.currentStreak, 0,
            "Current streak should be 0 if user hasn't studied today")
    }

    // MARK: - Longest Streak

    func testLongestStreakWithSingleDay() {
        let state = makeCleanState()
        let today = Calendar.current.startOfDay(for: Date())
        state.studyDates = [today]

        XCTAssertEqual(state.longestStreak, 1)
    }

    func testLongestStreakFindsHistoricalBest() {
        let state = makeCleanState()
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())

        state.studyDates = [
            // Old 4-day streak
            cal.date(byAdding: .day, value: -20, to: today)!,
            cal.date(byAdding: .day, value: -19, to: today)!,
            cal.date(byAdding: .day, value: -18, to: today)!,
            cal.date(byAdding: .day, value: -17, to: today)!,
            // Gap
            // Recent 2-day streak
            cal.date(byAdding: .day, value: -1, to: today)!,
            today
        ]

        XCTAssertEqual(state.longestStreak, 4,
            "Longest streak should find the historical best, not just the current one")
    }

    func testLongestStreakWithDuplicateDatesOnSameDay() {
        let state = makeCleanState()
        let cal = Calendar.current
        let today = cal.startOfDay(for: Date())

        // Multiple entries on the same day shouldn't inflate the streak
        state.studyDates = [
            today,
            today,
            today
        ]

        XCTAssertEqual(state.longestStreak, 1,
            "Duplicate dates on the same day should count as streak of 1")
    }

    // MARK: - Aggregate Stats

    func testTotalReviewedAggregatesAllCards() {
        let state = makeCleanState()
        var card1 = SRSCard(kanjiID: "日")
        card1.totalReviews = 5
        var card2 = SRSCard(kanjiID: "月")
        card2.totalReviews = 3

        state.cards = ["日": card1, "月": card2]

        XCTAssertEqual(state.totalReviewed, 8)
    }

    func testOverallAccuracy() {
        let state = makeCleanState()
        var card1 = SRSCard(kanjiID: "日")
        card1.totalReviews = 10
        card1.correctReviews = 8

        var card2 = SRSCard(kanjiID: "月")
        card2.totalReviews = 10
        card2.correctReviews = 6

        state.cards = ["日": card1, "月": card2]

        // 14 correct out of 20 total = 0.7
        XCTAssertEqual(state.overallAccuracy, 0.7, accuracy: 0.001)
    }

    func testMasteredCount() {
        let state = makeCleanState()
        var mastered = SRSCard(kanjiID: "日")
        mastered.interval = 21  // exactly at threshold

        var notMastered = SRSCard(kanjiID: "月")
        notMastered.interval = 20  // just below

        var alsoMastered = SRSCard(kanjiID: "火")
        alsoMastered.interval = 60

        state.cards = ["日": mastered, "月": notMastered, "火": alsoMastered]

        XCTAssertEqual(state.masteredCount, 2)
    }

    func testLearnedCount() {
        let state = makeCleanState()
        var learned = SRSCard(kanjiID: "日")
        learned.repetitions = 1

        let notLearned = SRSCard(kanjiID: "月")  // repetitions = 0

        state.cards = ["日": learned, "月": notLearned]

        XCTAssertEqual(state.learnedCount, 1)
    }

    // MARK: - Record Review

    func testRecordReviewCreatesNewCard() {
        let state = makeCleanState()

        state.recordReview(kanjiID: "日", rating: .good)

        XCTAssertNotNil(state.cards["日"])
        XCTAssertEqual(state.cards["日"]?.totalReviews, 1)
        XCTAssertEqual(state.cards["日"]?.correctReviews, 1)
    }

    func testRecordReviewUpdatesExistingCard() {
        let state = makeCleanState()

        state.recordReview(kanjiID: "日", rating: .good)
        state.recordReview(kanjiID: "日", rating: .again)

        XCTAssertEqual(state.cards["日"]?.totalReviews, 2)
        XCTAssertEqual(state.cards["日"]?.correctReviews, 1)
    }

    func testRecordReviewMarksStudyDate() {
        let state = makeCleanState()
        XCTAssertTrue(state.studyDates.isEmpty)

        state.recordReview(kanjiID: "日", rating: .good)

        XCTAssertEqual(state.studyDates.count, 1,
            "Recording a review should mark today as a study date")
    }

    func testRecordReviewDoesNotDuplicateStudyDate() {
        let state = makeCleanState()

        state.recordReview(kanjiID: "日", rating: .good)
        state.recordReview(kanjiID: "月", rating: .easy)

        XCTAssertEqual(state.studyDates.count, 1,
            "Multiple reviews on the same day should only create one study date entry")
    }

    // MARK: - Record Session

    func testRecordSessionAppendsToHistory() {
        let state = makeCleanState()
        let session = StudySession(
            date: Date(), reviewed: 10, correct: 8,
            durationSeconds: 120, levels: ["N5"]
        )

        state.recordSession(session)

        XCTAssertEqual(state.sessionHistory.count, 1)
        XCTAssertEqual(state.sessionHistory.first?.reviewed, 10)
    }

    func testRecordSessionCapsAt200() {
        let state = makeCleanState()

        for i in 0..<210 {
            let session = StudySession(
                date: Date(), reviewed: i, correct: i,
                durationSeconds: 60, levels: ["N5"]
            )
            state.recordSession(session)
        }

        XCTAssertEqual(state.sessionHistory.count, 200,
            "Session history should be capped at 200 entries")
        // The first entries should have been removed
        XCTAssertEqual(state.sessionHistory.first?.reviewed, 10,
            "Oldest sessions should be pruned when cap is exceeded")
    }

    // MARK: - Reset Progress

    func testResetProgressClearsCardsAndDates() {
        let state = makeCleanState()

        state.recordReview(kanjiID: "日", rating: .good)
        state.recordSession(StudySession(
            date: Date(), reviewed: 1, correct: 1,
            durationSeconds: 30, levels: ["N5"]
        ))

        XCTAssertFalse(state.cards.isEmpty)
        XCTAssertFalse(state.studyDates.isEmpty)
        XCTAssertFalse(state.sessionHistory.isEmpty)

        state.resetProgress()

        XCTAssertTrue(state.cards.isEmpty, "Reset should clear all cards")
        XCTAssertTrue(state.studyDates.isEmpty, "Reset should clear study dates")
        XCTAssertTrue(state.sessionHistory.isEmpty, "Reset should clear session history")
    }

    func testResetProgressPreservesPreferences() {
        let state = makeCleanState()
        state.selectedLevels = [.N3, .N4]
        state.sessionSize = 15
        state.hasCompletedOnboarding = true

        state.resetProgress()

        XCTAssertEqual(state.selectedLevels, [.N3, .N4],
            "Reset should not change selected levels")
        XCTAssertEqual(state.sessionSize, 15,
            "Reset should not change session size")
        XCTAssertTrue(state.hasCompletedOnboarding,
            "Reset should not change onboarding state")
    }

    // MARK: - Level Progress

    func testLevelProgressWithNoCards() {
        let state = makeCleanState()
        let progress = state.levelProgress(.N5)
        XCTAssertEqual(progress, 0.0, accuracy: 0.001)
    }
}
