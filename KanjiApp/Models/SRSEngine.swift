import Foundation

// MARK: - SRS Card (per-kanji review state)
struct SRSCard: Codable, Identifiable, Equatable {
    var id: String              // kanji character
    var easeFactor: Double      // SM-2 ease factor (starts 2.5)
    var interval: Int           // days until next review
    var repetitions: Int        // consecutive correct reviews
    var nextReviewDate: Date
    var lastReviewDate: Date?
    var totalReviews: Int
    var correctReviews: Int

    var accuracy: Double {
        guard totalReviews > 0 else { return 0 }
        return Double(correctReviews) / Double(totalReviews)
    }

    var isDueForReview: Bool {
        Date() >= nextReviewDate
    }

    init(kanjiID: String) {
        self.id = kanjiID
        self.easeFactor = 2.5
        self.interval = 0
        self.repetitions = 0
        self.nextReviewDate = Date()
        self.lastReviewDate = nil
        self.totalReviews = 0
        self.correctReviews = 0
    }
}

// MARK: - Rating given by user
enum ReviewRating: Int {
    case again = 0   // complete blackout
    case hard  = 1   // incorrect, but close
    case good  = 2   // correct with hesitation
    case easy  = 3   // perfect recall

    var label: String {
        switch self {
        case .again: return "Again"
        case .hard:  return "Hard"
        case .good:  return "Good"
        case .easy:  return "Easy"
        }
    }

    var emoji: String {
        switch self {
        case .again: return "🔴"
        case .hard:  return "🟠"
        case .good:  return "🟢"
        case .easy:  return "⭐️"
        }
    }
}

// MARK: - SM-2 Algorithm
struct SRSEngine {

    /// Process a review and return the updated SRSCard.
    static func processReview(card: SRSCard, rating: ReviewRating) -> SRSCard {
        var c = card
        c.totalReviews += 1
        c.lastReviewDate = Date()

        let quality = rating.rawValue  // 0–3 (we map to SM-2's 0–5 scale below)
        let q = quality * 2 - 1        // maps to -1, 1, 3, 5 → clamp to 0…5
        let clampedQ = max(0, min(5, q + 2)) // shift: again=1, hard=2, good=4, easy=5

        if clampedQ < 3 {
            // Failed: reset repetitions, short interval
            c.repetitions = 0
            c.interval = 1
        } else {
            c.correctReviews += 1
            switch c.repetitions {
            case 0:  c.interval = 1
            case 1:  c.interval = 6
            default: c.interval = Int((Double(c.interval) * c.easeFactor).rounded())
            }
            c.repetitions += 1
        }

        // Update ease factor (SM-2 formula)
        let newEF = c.easeFactor + (0.1 - Double(5 - clampedQ) * (0.08 + Double(5 - clampedQ) * 0.02))
        c.easeFactor = max(1.3, newEF)

        // Bonus: easy review adds extra day
        if rating == .easy { c.interval += 1 }

        // Schedule next review
        let daysInterval = max(1, c.interval)
        c.nextReviewDate = Calendar.current.date(
            byAdding: .day, value: daysInterval, to: Date()) ?? Date()

        return c
    }

    /// Pick up to `limit` cards due for review from a set of levels.
    static func dueCards(
        from cards: [String: SRSCard],
        levels: Set<JLPTLevel>,
        limit: Int = 20
    ) -> [Kanji] {
        let allKanji = KanjiDatabase.all.filter { levels.contains($0.level) }

        // New cards (never studied) first, then due cards
        let newKanji = allKanji.filter { cards[$0.id] == nil }
        let dueKanji = allKanji.filter {
            if let card = cards[$0.id] { return card.isDueForReview } else { return false }
        }

        // Mix: up to 5 new + rest from due
        let newBatch = Array(newKanji.prefix(min(5, limit)))
        let dueBatch = Array(dueKanji.prefix(limit - newBatch.count))
        return (dueBatch + newBatch).shuffled()
    }
}
