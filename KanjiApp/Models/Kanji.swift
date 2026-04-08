import Foundation

// MARK: - JLPT Level
enum JLPTLevel: String, Codable, CaseIterable, Comparable {
    case N5, N4, N3, N2, N1

    var displayName: String { rawValue }

    var color: String {
        switch self {
        case .N5: return "levelN5"
        case .N4: return "levelN4"
        case .N3: return "levelN3"
        case .N2: return "levelN2"
        case .N1: return "levelN1"
        }
    }

    var kanjiCount: Int {
        KanjiDatabase.all.filter { $0.level == self }.count
    }

    static func < (lhs: JLPTLevel, rhs: JLPTLevel) -> Bool {
        let order: [JLPTLevel] = [.N5, .N4, .N3, .N2, .N1]
        return order.firstIndex(of: lhs)! < order.firstIndex(of: rhs)!
    }
}

// MARK: - Kanji Model
struct Kanji: Identifiable, Codable, Hashable {
    let id: String          // the kanji character itself
    let meanings: [String]
    let onyomi: [String]    // Chinese readings (カタカナ)
    let kunyomi: [String]   // Japanese readings (ひらがな)
    let level: JLPTLevel
    let strokeCount: Int
    let examples: [KanjiExample]

    var primaryMeaning: String { meanings.first ?? "" }
    var onyomiDisplay: String { onyomi.isEmpty ? "—" : onyomi.joined(separator: "、") }
    var kunyomiDisplay: String { kunyomi.isEmpty ? "—" : kunyomi.joined(separator: "、") }
}

struct KanjiExample: Codable, Hashable {
    let word: String
    let reading: String
    let meaning: String
}
