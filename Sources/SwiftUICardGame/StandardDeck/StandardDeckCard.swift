import SwiftUI

public struct StandardDeckCard: Identifiable, Hashable {
    public var rank: Rank
    public var suit: Suit
    public var isFacedUp: Bool

    public init(_ rank: Rank, of suit: Suit, isFacedUp: Bool) {
        self.rank = rank
        self.suit = suit
        self.isFacedUp = isFacedUp
    }

    public var id: Int { hashValue }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(rank)
        hasher.combine(suit)
    }
}

public extension Array where Element == StandardDeckCard {
    static var standard52Deck: [StandardDeckCard] {
        Suit.allCases.flatMap { suit in
            Rank.allCases.map { rank in
                StandardDeckCard(rank, of: suit, isFacedUp: false)
            }
        }
    }
}
