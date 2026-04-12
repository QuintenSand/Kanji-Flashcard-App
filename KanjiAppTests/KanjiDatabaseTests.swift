import XCTest
@testable import KanjiApp

final class KanjiDatabaseTests: XCTestCase {

    // MARK: - Database Completeness

    func testDatabaseIsNotEmpty() {
        XCTAssertFalse(KanjiDatabase.all.isEmpty)
    }

    func testTotalKanjiCount() {
        // README states 1,318 kanji
        XCTAssertEqual(KanjiDatabase.all.count, 1318,
            "Database should contain exactly 1,318 kanji")
    }

    func testEachLevelHasKanji() {
        for level in JLPTLevel.allCases {
            let count = KanjiDatabase.all.filter { $0.level == level }.count
            XCTAssertGreaterThan(count, 0,
                "\(level.displayName) should have at least one kanji")
        }
    }

    func testExpectedLevelCounts() {
        // Verify against documented counts: N5=85, N4=170, N3=375, N2=382, N1=306
        let n5 = KanjiDatabase.all.filter { $0.level == .N5 }.count
        let n4 = KanjiDatabase.all.filter { $0.level == .N4 }.count
        let n3 = KanjiDatabase.all.filter { $0.level == .N3 }.count
        let n2 = KanjiDatabase.all.filter { $0.level == .N2 }.count
        let n1 = KanjiDatabase.all.filter { $0.level == .N1 }.count

        XCTAssertEqual(n5, 85, "N5 should have 85 kanji")
        XCTAssertEqual(n4, 170, "N4 should have 170 kanji")
        XCTAssertEqual(n3, 375, "N3 should have 375 kanji")
        XCTAssertEqual(n2, 382, "N2 should have 382 kanji")
        XCTAssertEqual(n1, 306, "N1 should have 306 kanji")

        XCTAssertEqual(n5 + n4 + n3 + n2 + n1, KanjiDatabase.all.count,
            "Level counts should sum to total")
    }

    // MARK: - Data Integrity

    func testAllKanjiHaveUniqueIDs() {
        let ids = KanjiDatabase.all.map { $0.id }
        let uniqueIDs = Set(ids)
        XCTAssertEqual(ids.count, uniqueIDs.count,
            "All kanji should have unique IDs (no duplicates)")
    }

    func testAllKanjiIDsAreSingleCharacters() {
        for kanji in KanjiDatabase.all {
            XCTAssertEqual(kanji.id.count, 1,
                "Kanji ID '\(kanji.id)' should be a single character")
        }
    }

    func testAllKanjiHaveAtLeastOneMeaning() {
        for kanji in KanjiDatabase.all {
            XCTAssertFalse(kanji.meanings.isEmpty,
                "Kanji '\(kanji.id)' should have at least one meaning")
        }
    }

    func testAllKanjiHavePositiveStrokeCount() {
        for kanji in KanjiDatabase.all {
            XCTAssertGreaterThan(kanji.strokeCount, 0,
                "Kanji '\(kanji.id)' should have a positive stroke count")
        }
    }

    func testAllKanjiHaveAtLeastOneReading() {
        for kanji in KanjiDatabase.all {
            let hasReading = !kanji.onyomi.isEmpty || !kanji.kunyomi.isEmpty
            XCTAssertTrue(hasReading,
                "Kanji '\(kanji.id)' should have at least one onyomi or kunyomi reading")
        }
    }

    func testAllKanjiHaveAtLeastOneExample() {
        for kanji in KanjiDatabase.all {
            XCTAssertFalse(kanji.examples.isEmpty,
                "Kanji '\(kanji.id)' should have at least one example word")
        }
    }

    func testExamplesHaveNonEmptyFields() {
        for kanji in KanjiDatabase.all {
            for example in kanji.examples {
                XCTAssertFalse(example.word.isEmpty,
                    "Example word for '\(kanji.id)' should not be empty")
                XCTAssertFalse(example.reading.isEmpty,
                    "Example reading for '\(kanji.id)' should not be empty")
                XCTAssertFalse(example.meaning.isEmpty,
                    "Example meaning for '\(kanji.id)' should not be empty")
            }
        }
    }

    // MARK: - Specific Known Kanji (Sanity Checks)

    func testN5ContainsBasicKanji() {
        let n5IDs = Set(KanjiDatabase.all.filter { $0.level == .N5 }.map { $0.id })

        // The days of the week kanji should all be in N5
        let daysOfWeek = ["日", "月", "火", "水", "木", "金", "土"]
        for kanji in daysOfWeek {
            XCTAssertTrue(n5IDs.contains(kanji),
                "N5 should contain basic kanji '\(kanji)'")
        }

        // Numbers 1-10 should be in N5
        let numbers = ["一", "二", "三", "四", "五", "六", "七"]
        for kanji in numbers {
            XCTAssertTrue(n5IDs.contains(kanji),
                "N5 should contain number kanji '\(kanji)'")
        }
    }

    func testSunKanjiHasExpectedData() {
        guard let sun = KanjiDatabase.all.first(where: { $0.id == "日" }) else {
            XCTFail("Database should contain 日")
            return
        }

        XCTAssertTrue(sun.meanings.contains("sun"))
        XCTAssertTrue(sun.meanings.contains("day"))
        XCTAssertEqual(sun.level, .N5)
        XCTAssertEqual(sun.strokeCount, 4)
        XCTAssertFalse(sun.onyomi.isEmpty)
        XCTAssertFalse(sun.kunyomi.isEmpty)
    }

    // MARK: - Level Array Consistency

    func testStaticArraysMatchFilteredAll() {
        XCTAssertEqual(KanjiDatabase.n5.count,
            KanjiDatabase.all.filter { $0.level == .N5 }.count)
        XCTAssertEqual(KanjiDatabase.n4.count,
            KanjiDatabase.all.filter { $0.level == .N4 }.count)
        XCTAssertEqual(KanjiDatabase.n3.count,
            KanjiDatabase.all.filter { $0.level == .N3 }.count)
        XCTAssertEqual(KanjiDatabase.n2.count,
            KanjiDatabase.all.filter { $0.level == .N2 }.count)
        XCTAssertEqual(KanjiDatabase.n1.count,
            KanjiDatabase.all.filter { $0.level == .N1 }.count)
    }

    // MARK: - Stroke Count Sanity

    func testStrokeCountsAreReasonable() {
        for kanji in KanjiDatabase.all {
            XCTAssertLessThanOrEqual(kanji.strokeCount, 30,
                "Kanji '\(kanji.id)' has unusually high stroke count: \(kanji.strokeCount)")
        }
    }
}
