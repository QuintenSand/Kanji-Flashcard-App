import XCTest
@testable import KanjiApp

final class SRSCardTests: XCTestCase {

    // MARK: - Initialization Defaults

    func testDefaultValues() {
        let card = SRSCard(kanjiID: "日")

        XCTAssertEqual(card.id, "日")
        XCTAssertEqual(card.easeFactor, 2.5)
        XCTAssertEqual(card.interval, 0)
        XCTAssertEqual(card.repetitions, 0)
        XCTAssertEqual(card.totalReviews, 0)
        XCTAssertEqual(card.correctReviews, 0)
        XCTAssertNil(card.lastReviewDate)
    }

    // MARK: - Accuracy Computed Property

    func testAccuracyWithNoReviews() {
        let card = SRSCard(kanjiID: "月")
        XCTAssertEqual(card.accuracy, 0, "Accuracy should be 0 with no reviews")
    }

    func testAccuracyWithAllCorrect() {
        var card = SRSCard(kanjiID: "月")
        card.totalReviews = 10
        card.correctReviews = 10
        XCTAssertEqual(card.accuracy, 1.0, accuracy: 0.001)
    }

    func testAccuracyWithMixedResults() {
        var card = SRSCard(kanjiID: "月")
        card.totalReviews = 4
        card.correctReviews = 3
        XCTAssertEqual(card.accuracy, 0.75, accuracy: 0.001)
    }

    func testAccuracyWithAllIncorrect() {
        var card = SRSCard(kanjiID: "月")
        card.totalReviews = 5
        card.correctReviews = 0
        XCTAssertEqual(card.accuracy, 0.0, accuracy: 0.001)
    }

    // MARK: - isDueForReview Computed Property

    func testFreshCardIsDueForReview() {
        let card = SRSCard(kanjiID: "火")
        // nextReviewDate is set to Date() in init, so it should be due now
        XCTAssertTrue(card.isDueForReview, "Fresh card should be due for review")
    }

    func testCardWithFutureReviewDateIsNotDue() {
        var card = SRSCard(kanjiID: "火")
        card.nextReviewDate = Calendar.current.date(byAdding: .day, value: 7, to: Date())!
        XCTAssertFalse(card.isDueForReview, "Card with future review date should not be due")
    }

    func testCardWithPastReviewDateIsDue() {
        var card = SRSCard(kanjiID: "火")
        card.nextReviewDate = Calendar.current.date(byAdding: .day, value: -1, to: Date())!
        XCTAssertTrue(card.isDueForReview, "Card with past review date should be due")
    }

    // MARK: - Codable Round-Trip

    func testCodableRoundTrip() throws {
        var card = SRSCard(kanjiID: "水")
        card.easeFactor = 2.2
        card.interval = 15
        card.repetitions = 4
        card.totalReviews = 10
        card.correctReviews = 8
        card.lastReviewDate = Date()

        let data = try JSONEncoder().encode(card)
        let decoded = try JSONDecoder().decode(SRSCard.self, from: data)

        XCTAssertEqual(card.id, decoded.id)
        XCTAssertEqual(card.easeFactor, decoded.easeFactor)
        XCTAssertEqual(card.interval, decoded.interval)
        XCTAssertEqual(card.repetitions, decoded.repetitions)
        XCTAssertEqual(card.totalReviews, decoded.totalReviews)
        XCTAssertEqual(card.correctReviews, decoded.correctReviews)
    }

    func testCodableDictionaryRoundTrip() throws {
        var cards: [String: SRSCard] = [:]
        cards["日"] = SRSCard(kanjiID: "日")
        cards["月"] = SRSCard(kanjiID: "月")
        cards["月"]?.totalReviews = 5
        cards["月"]?.correctReviews = 4

        let data = try JSONEncoder().encode(cards)
        let decoded = try JSONDecoder().decode([String: SRSCard].self, from: data)

        XCTAssertEqual(decoded.count, 2)
        XCTAssertEqual(decoded["月"]?.totalReviews, 5)
        XCTAssertEqual(decoded["月"]?.correctReviews, 4)
    }

    // MARK: - Equatable

    func testEqualCards() {
        let a = SRSCard(kanjiID: "木")
        let b = SRSCard(kanjiID: "木")
        XCTAssertEqual(a, b)
    }

    func testUnequalCards() {
        let a = SRSCard(kanjiID: "木")
        var b = SRSCard(kanjiID: "木")
        b.totalReviews = 1
        XCTAssertNotEqual(a, b)
    }
}
