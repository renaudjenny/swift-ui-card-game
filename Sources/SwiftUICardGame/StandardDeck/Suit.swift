import SwiftUI

public enum Suit: String, CaseIterable, Identifiable {
    case clubs
    case diamonds
    case hearts
    case spades

    @ShapeBuilder
    public var view: some Shape {
        switch self {
        case .clubs: ClubsShape()
        case .diamonds: DiamondsShape()
        case .hearts: HeartsShape()
        case .spades: SpadesShape()
        }
    }

    public var id: String { rawValue }
}
