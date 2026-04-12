import XCTest
@testable import KanjiApp

final class SRSEngineTests: XCTestCase {

    // MARK: - Rating → Quality Mapping
    //
    // The engine maps ReviewRating to SM-2 quality:
    //   again → 1 (fail), hard → 2 (fail), good → 4 (pass), easy → 5 (pass)

    // MARK: - "Again" Rating (quality = 1, clampedQ < 3 → fail path)

    func testAgainResetsRepetitionsAndSetsIntervalToOne() {
        var card = SRSCard(kanjiID: "日")
        card.repetitions = 5
        card.interval = 30
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .again)

        XCTAssertEqual(result.repetitions, 0, "Again should reset repetitions to 0")
        XCTAssertEqual(result.interval, 1, "Again should set interval to 1")
    }

    func testAgainDoesNotIncrementCorrectReviews() {
        let card = SRSCard(kanjiID: "日")
        let result = SRSEngine.processReview(card: card, rating: .again)

        XCTAssertEqual(result.totalReviews, 1)
        XCTAssertEqual(result.correctReviews, 0, "Again should not count as correct")
    }

    func testAgainDecreasesEaseFactor() {
        var card = SRSCard(kanjiID: "日")
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .again)

        XCTAssertLessThan(result.easeFactor, 2.5, "Again should decrease ease factor")
    }

    // MARK: - "Hard" Rating (quality = 2, clampedQ < 3 → fail path)

    func testHardResetsRepetitionsAndSetsIntervalToOne() {
        var card = SRSCard(kanjiID: "月")
        card.repetitions = 3
        card.interval = 15
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .hard)

        XCTAssertEqual(result.repetitions, 0, "Hard should reset repetitions to 0")
        XCTAssertEqual(result.interval, 1, "Hard should set interval to 1")
    }

    func testHardDoesNotIncrementCorrectReviews() {
        let card = SRSCard(kanjiID: "月")
        let result = SRSEngine.processReview(card: card, rating: .hard)

        XCTAssertEqual(result.correctReviews, 0, "Hard should not count as correct")
    }

    // MARK: - "Good" Rating (quality = 4, clampedQ >= 3 → pass path)

    func testGoodOnFirstReviewSetsIntervalToOne() {
        let card = SRSCard(kanjiID: "火")  // fresh card, repetitions = 0

        let result = SRSEngine.processReview(card: card, rating: .good)

        XCTAssertEqual(result.repetitions, 1)
        XCTAssertEqual(result.interval, 1, "First correct review should set interval to 1 day")
    }

    func testGoodOnSecondReviewSetsIntervalToSix() {
        var card = SRSCard(kanjiID: "火")
        card.repetitions = 1
        card.interval = 1
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .good)

        XCTAssertEqual(result.repetitions, 2)
        XCTAssertEqual(result.interval, 6, "Second correct review should set interval to 6 days")
    }

    func testGoodOnThirdReviewMultipliesByEaseFactor() {
        var card = SRSCard(kanjiID: "火")
        card.repetitions = 2
        card.interval = 6
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .good)

        // 6 * 2.5 = 15.0, rounded = 15
        XCTAssertEqual(result.repetitions, 3)
        XCTAssertEqual(result.interval, 15, "Third correct review should multiply interval by ease factor")
    }

    func testGoodIncrementsCorrectReviews() {
        let card = SRSCard(kanjiID: "火")
        let result = SRSEngine.processReview(card: card, rating: .good)

        XCTAssertEqual(result.totalReviews, 1)
        XCTAssertEqual(result.correctReviews, 1, "Good should count as correct")
    }

    // MARK: - "Easy" Rating (quality = 5, pass path + bonus day)

    func testEasyAddsOneBonusDay() {
        var card = SRSCard(kanjiID: "水")
        card.repetitions = 2
        card.interval = 6
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .easy)

        // 6 * 2.5 = 15, + 1 bonus = 16
        XCTAssertEqual(result.interval, 16, "Easy should add +1 bonus day to calculated interval")
    }

    func testEasyIncreasesEaseFactor() {
        var card = SRSCard(kanjiID: "水")
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .easy)

        XCTAssertGreaterThan(result.easeFactor, 2.5, "Easy should increase ease factor")
    }

    // MARK: - Ease Factor Bounds

    func testEaseFactorNeverDropsBelowMinimum() {
        var card = SRSCard(kanjiID: "木")
        card.easeFactor = 1.3  // already at minimum

        // Repeatedly hit "again" to drive it down
        var result = card
        for _ in 0..<10 {
            result = SRSEngine.processReview(card: result, rating: .again)
        }

        XCTAssertGreaterThanOrEqual(result.easeFactor, 1.3,
            "Ease factor must never drop below 1.3")
    }

    func testEaseFactorIncreasesWithConsecutiveEasyRatings() {
        var card = SRSCard(kanjiID: "木")
        card.easeFactor = 2.5

        var previous = card.easeFactor
        for _ in 0..<5 {
            card = SRSEngine.processReview(card: card, rating: .easy)
            XCTAssertGreaterThanOrEqual(card.easeFactor, previous,
                "Easy ratings should increase or maintain ease factor")
            previous = card.easeFactor
        }
    }

    // MARK: - Next Review Date Scheduling

    func testNextReviewDateIsInTheFuture() {
        let card = SRSCard(kanjiID: "金")
        let result = SRSEngine.processReview(card: card, rating: .good)

        XCTAssertGreaterThan(result.nextReviewDate, Date(),
            "Next review date should be in the future")
    }

    func testLastReviewDateIsSetAfterReview() {
        let card = SRSCard(kanjiID: "金")
        XCTAssertNil(card.lastReviewDate, "Fresh card should have no last review date")

        let result = SRSEngine.processReview(card: card, rating: .good)
        XCTAssertNotNil(result.lastReviewDate, "After review, last review date should be set")
    }

    // MARK: - Interval Always at Least 1

    func testIntervalIsAlwaysAtLeastOneDay() {
        let ratings: [ReviewRating] = [.again, .hard, .good, .easy]
        for rating in ratings {
            let card = SRSCard(kanjiID: "土")
            let result = SRSEngine.processReview(card: card, rating: rating)
            XCTAssertGreaterThanOrEqual(result.interval, 1,
                "Interval should be >= 1 day for rating \(rating.label)")
        }
    }

    // MARK: - Recovery After Failure

    func testRecoveryPathAfterAgain() {
        // Simulate: learn card, then forget, then re-learn
        var card = SRSCard(kanjiID: "人")

        // Pass a few times
        card = SRSEngine.processReview(card: card, rating: .good) // rep 1, interval 1
        card = SRSEngine.processReview(card: card, rating: .good) // rep 2, interval 6
        XCTAssertEqual(card.repetitions, 2)

        // Forget it
        card = SRSEngine.processReview(card: card, rating: .again) // reset
        XCTAssertEqual(card.repetitions, 0)
        XCTAssertEqual(card.interval, 1)

        // Re-learn
        card = SRSEngine.processReview(card: card, rating: .good) // rep 1, interval 1
        XCTAssertEqual(card.repetitions, 1)
        XCTAssertEqual(card.interval, 1, "After reset, first good should give interval 1")

        card = SRSEngine.processReview(card: card, rating: .good) // rep 2, interval 6
        XCTAssertEqual(card.repetitions, 2)
        XCTAssertEqual(card.interval, 6, "After reset, second good should give interval 6")
    }

    // MARK: - Total Reviews Always Increments

    func testTotalReviewsAlwaysIncrements() {
        var card = SRSCard(kanjiID: "口")
        let ratings: [ReviewRating] = [.good, .again, .hard, .easy, .good, .again]

        for (i, rating) in ratings.enumerated() {
            card = SRSEngine.processReview(card: card, rating: rating)
            XCTAssertEqual(card.totalReviews, i + 1,
                "Total reviews should always increment (iteration \(i))")
        }
    }

    // MARK: - SM-2 Ease Factor Formula Verification

    func testEaseFactorFormulaGoodRating() {
        // clampedQ = 4 for "good"
        // newEF = 2.5 + (0.1 - (5-4) * (0.08 + (5-4) * 0.02))
        // newEF = 2.5 + (0.1 - 1 * (0.08 + 0.02))
        // newEF = 2.5 + (0.1 - 0.1) = 2.5
        var card = SRSCard(kanjiID: "目")
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .good)

        XCTAssertEqual(result.easeFactor, 2.5, accuracy: 0.001,
            "Good rating should keep ease factor at 2.5 (no change)")
    }

    func testEaseFactorFormulaEasyRating() {
        // clampedQ = 5 for "easy"
        // newEF = 2.5 + (0.1 - (5-5) * (0.08 + (5-5) * 0.02))
        // newEF = 2.5 + 0.1 = 2.6
        var card = SRSCard(kanjiID: "目")
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .easy)

        XCTAssertEqual(result.easeFactor, 2.6, accuracy: 0.001,
            "Easy rating should increase ease factor by 0.1")
    }

    func testEaseFactorFormulaAgainRating() {
        // clampedQ = 1 for "again"
        // newEF = 2.5 + (0.1 - (5-1) * (0.08 + (5-1) * 0.02))
        // newEF = 2.5 + (0.1 - 4 * (0.08 + 0.08))
        // newEF = 2.5 + (0.1 - 0.64) = 2.5 - 0.54 = 1.96
        var card = SRSCard(kanjiID: "目")
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .again)

        XCTAssertEqual(result.easeFactor, 1.96, accuracy: 0.001,
            "Again rating should significantly decrease ease factor")
    }

    func testEaseFactorFormulaHardRating() {
        // clampedQ = 2 for "hard"
        // newEF = 2.5 + (0.1 - (5-2) * (0.08 + (5-2) * 0.02))
        // newEF = 2.5 + (0.1 - 3 * (0.08 + 0.06))
        // newEF = 2.5 + (0.1 - 0.42) = 2.5 - 0.32 = 2.18
        var card = SRSCard(kanjiID: "目")
        card.easeFactor = 2.5

        let result = SRSEngine.processReview(card: card, rating: .hard)

        XCTAssertEqual(result.easeFactor, 2.18, accuracy: 0.001,
            "Hard rating should decrease ease factor moderately")
    }

    // MARK: - Long-Term Interval Growth

    func testIntervalGrowsGeometricallyWithConsecutiveGoodRatings() {
        var card = SRSCard(kanjiID: "耳")
        card.easeFactor = 2.5

        card = SRSEngine.processReview(card: card, rating: .good) // interval = 1
        XCTAssertEqual(card.interval, 1)

        card = SRSEngine.processReview(card: card, rating: .good) // interval = 6
        XCTAssertEqual(card.interval, 6)

        card = SRSEngine.processReview(card: card, rating: .good) // interval = 6 * 2.5 = 15
        XCTAssertEqual(card.interval, 15)

        card = SRSEngine.processReview(card: card, rating: .good) // interval = 15 * 2.5 = 38 (rounded)
        XCTAssertEqual(card.interval, 38)
    }

    // MARK: - Mastery Threshold

    func testCardReachesMasteryThreshold() {
        var card = SRSCard(kanjiID: "手")
        card.easeFactor = 2.5

        // Run through several good reviews
        for _ in 0..<10 {
            card = SRSEngine.processReview(card: card, rating: .good)
        }

        XCTAssertGreaterThanOrEqual(card.interval, 21,
            "After many good reviews, card should reach mastery threshold (21 days)")
    }
}
