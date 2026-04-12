import XCTest
@testable import KanjiApp

final class StudySessionTests: XCTestCase {

    // MARK: - Accuracy Computed Property

    func testAccuracyPerfectScore() {
        let session = StudySession(
            date: Date(), reviewed: 10, correct: 10,
            durationSeconds: 120, levels: ["N5"]
        )
        XCTAssertEqual(session.accuracy, 1.0, accuracy: 0.001)
    }

    func testAccuracyZeroCorrect() {
        let session = StudySession(
            date: Date(), reviewed: 10, correct: 0,
            durationSeconds: 120, levels: ["N5"]
        )
        XCTAssertEqual(session.accuracy, 0.0, accuracy: 0.001)
    }

    func testAccuracyPartialScore() {
        let session = StudySession(
            date: Date(), reviewed: 8, correct: 6,
            durationSeconds: 90, levels: ["N5"]
        )
        XCTAssertEqual(session.accuracy, 0.75, accuracy: 0.001)
    }

    func testAccuracyWithZeroReviewed() {
        let session = StudySession(
            date: Date(), reviewed: 0, correct: 0,
            durationSeconds: 0, levels: []
        )
        XCTAssertEqual(session.accuracy, 0.0,
            "Accuracy should be 0 when no cards were reviewed (not NaN)")
    }

    // MARK: - Identifiable

    func testSessionsHaveUniqueIDs() {
        let a = StudySession(date: Date(), reviewed: 5, correct: 5, durationSeconds: 60, levels: ["N5"])
        let b = StudySession(date: Date(), reviewed: 5, correct: 5, durationSeconds: 60, levels: ["N5"])
        XCTAssertNotEqual(a.id, b.id, "Each session should have a unique UUID")
    }

    // MARK: - Codable Round-Trip

    func testCodableRoundTrip() throws {
        let session = StudySession(
            date: Date(), reviewed: 15, correct: 12,
            durationSeconds: 300, levels: ["N5", "N4"]
        )

        let data = try JSONEncoder().encode(session)
        let decoded = try JSONDecoder().decode(StudySession.self, from: data)

        XCTAssertEqual(session.id, decoded.id)
        XCTAssertEqual(session.reviewed, decoded.reviewed)
        XCTAssertEqual(session.correct, decoded.correct)
        XCTAssertEqual(session.durationSeconds, decoded.durationSeconds)
        XCTAssertEqual(session.levels, decoded.levels)
    }

    func testCodableArrayRoundTrip() throws {
        let sessions = [
            StudySession(date: Date(), reviewed: 5, correct: 5, durationSeconds: 60, levels: ["N5"]),
            StudySession(date: Date(), reviewed: 10, correct: 7, durationSeconds: 120, levels: ["N4"]),
        ]

        let data = try JSONEncoder().encode(sessions)
        let decoded = try JSONDecoder().decode([StudySession].self, from: data)

        XCTAssertEqual(decoded.count, 2)
        XCTAssertEqual(decoded[0].reviewed, 5)
        XCTAssertEqual(decoded[1].reviewed, 10)
    }

    // MARK: - Multi-Level Sessions

    func testMultiLevelSession() {
        let session = StudySession(
            date: Date(), reviewed: 20, correct: 15,
            durationSeconds: 240, levels: ["N5", "N4", "N3"]
        )
        XCTAssertEqual(session.levels.count, 3)
        XCTAssertEqual(session.accuracy, 0.75, accuracy: 0.001)
    }
}
