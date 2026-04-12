import XCTest
@testable import KanjiApp

final class KanjiModelTests: XCTestCase {

    // MARK: - Kanji Model

    func testKanjiIdentityIsCharacterItself() {
        let kanji = Kanji(
            id: "日",
            meanings: ["sun", "day"],
            onyomi: ["ニチ", "ジツ"],
            kunyomi: ["ひ", "か"],
            level: .N5,
            strokeCount: 4,
            examples: []
        )
        XCTAssertEqual(kanji.id, "日")
    }

    func testPrimaryMeaningReturnsFirstMeaning() {
        let kanji = Kanji(
            id: "金", meanings: ["gold", "money"],
            onyomi: [], kunyomi: [],
            level: .N5, strokeCount: 8, examples: []
        )
        XCTAssertEqual(kanji.primaryMeaning, "gold")
    }

    func testPrimaryMeaningReturnsEmptyStringWhenNoMeanings() {
        let kanji = Kanji(
            id: "X", meanings: [],
            onyomi: [], kunyomi: [],
            level: .N5, strokeCount: 1, examples: []
        )
        XCTAssertEqual(kanji.primaryMeaning, "")
    }

    func testOnyomiDisplayJoinsWithComma() {
        let kanji = Kanji(
            id: "日", meanings: ["sun"],
            onyomi: ["ニチ", "ジツ"], kunyomi: [],
            level: .N5, strokeCount: 4, examples: []
        )
        XCTAssertEqual(kanji.onyomiDisplay, "ニチ、ジツ")
    }

    func testOnyomiDisplayEmptyShowsDash() {
        let kanji = Kanji(
            id: "X", meanings: [],
            onyomi: [], kunyomi: [],
            level: .N5, strokeCount: 1, examples: []
        )
        XCTAssertEqual(kanji.onyomiDisplay, "\u{2014}")  // em dash
    }

    func testKunyomiDisplayJoinsWithComma() {
        let kanji = Kanji(
            id: "日", meanings: ["sun"],
            onyomi: [], kunyomi: ["ひ", "か"],
            level: .N5, strokeCount: 4, examples: []
        )
        XCTAssertEqual(kanji.kunyomiDisplay, "ひ、か")
    }

    func testKunyomiDisplayEmptyShowsDash() {
        let kanji = Kanji(
            id: "X", meanings: [],
            onyomi: [], kunyomi: [],
            level: .N5, strokeCount: 1, examples: []
        )
        XCTAssertEqual(kanji.kunyomiDisplay, "\u{2014}")
    }

    func testKanjiCodableRoundTrip() throws {
        let example = KanjiExample(word: "日本", reading: "にほん", meaning: "Japan")
        let kanji = Kanji(
            id: "日", meanings: ["sun", "day"],
            onyomi: ["ニチ"], kunyomi: ["ひ"],
            level: .N5, strokeCount: 4, examples: [example]
        )

        let data = try JSONEncoder().encode(kanji)
        let decoded = try JSONDecoder().decode(Kanji.self, from: data)

        XCTAssertEqual(kanji, decoded)
        XCTAssertEqual(decoded.examples.first?.word, "日本")
        XCTAssertEqual(decoded.examples.first?.reading, "にほん")
    }

    func testKanjiHashable() {
        let a = Kanji(id: "日", meanings: ["sun"], onyomi: [], kunyomi: [], level: .N5, strokeCount: 4, examples: [])
        let b = Kanji(id: "日", meanings: ["sun"], onyomi: [], kunyomi: [], level: .N5, strokeCount: 4, examples: [])
        let c = Kanji(id: "月", meanings: ["moon"], onyomi: [], kunyomi: [], level: .N5, strokeCount: 4, examples: [])

        let set: Set<Kanji> = [a, b, c]
        XCTAssertEqual(set.count, 2, "Two identical kanji should hash to same value")
    }

    // MARK: - JLPTLevel

    func testJLPTLevelDisplayName() {
        XCTAssertEqual(JLPTLevel.N5.displayName, "N5")
        XCTAssertEqual(JLPTLevel.N1.displayName, "N1")
    }

    func testJLPTLevelColorMapping() {
        XCTAssertEqual(JLPTLevel.N5.color, "levelN5")
        XCTAssertEqual(JLPTLevel.N4.color, "levelN4")
        XCTAssertEqual(JLPTLevel.N3.color, "levelN3")
        XCTAssertEqual(JLPTLevel.N2.color, "levelN2")
        XCTAssertEqual(JLPTLevel.N1.color, "levelN1")
    }

    func testJLPTLevelComparableOrdering() {
        XCTAssertTrue(JLPTLevel.N5 < JLPTLevel.N4)
        XCTAssertTrue(JLPTLevel.N4 < JLPTLevel.N3)
        XCTAssertTrue(JLPTLevel.N3 < JLPTLevel.N2)
        XCTAssertTrue(JLPTLevel.N2 < JLPTLevel.N1)
        XCTAssertFalse(JLPTLevel.N1 < JLPTLevel.N5)
    }

    func testJLPTLevelCaseIterable() {
        XCTAssertEqual(JLPTLevel.allCases.count, 5)
        XCTAssertEqual(JLPTLevel.allCases, [.N5, .N4, .N3, .N2, .N1])
    }

    func testJLPTLevelCodableRoundTrip() throws {
        for level in JLPTLevel.allCases {
            let data = try JSONEncoder().encode(level)
            let decoded = try JSONDecoder().decode(JLPTLevel.self, from: data)
            XCTAssertEqual(level, decoded)
        }
    }

    func testJLPTLevelKanjiCountIsPositive() {
        for level in JLPTLevel.allCases {
            XCTAssertGreaterThan(level.kanjiCount, 0,
                "\(level.displayName) should have at least one kanji in the database")
        }
    }

    // MARK: - ReviewRating

    func testReviewRatingLabels() {
        XCTAssertEqual(ReviewRating.again.label, "Again")
        XCTAssertEqual(ReviewRating.hard.label, "Hard")
        XCTAssertEqual(ReviewRating.good.label, "Good")
        XCTAssertEqual(ReviewRating.easy.label, "Easy")
    }

    func testReviewRatingRawValues() {
        XCTAssertEqual(ReviewRating.again.rawValue, 0)
        XCTAssertEqual(ReviewRating.hard.rawValue, 1)
        XCTAssertEqual(ReviewRating.good.rawValue, 2)
        XCTAssertEqual(ReviewRating.easy.rawValue, 3)
    }

    // MARK: - KanjiExample

    func testKanjiExampleProperties() {
        let example = KanjiExample(word: "日本", reading: "にほん", meaning: "Japan")

        XCTAssertEqual(example.word, "日本")
        XCTAssertEqual(example.reading, "にほん")
        XCTAssertEqual(example.meaning, "Japan")
    }

    func testKanjiExampleHashable() {
        let a = KanjiExample(word: "日本", reading: "にほん", meaning: "Japan")
        let b = KanjiExample(word: "日本", reading: "にほん", meaning: "Japan")
        XCTAssertEqual(a, b)

        let set: Set<KanjiExample> = [a, b]
        XCTAssertEqual(set.count, 1)
    }
}
