import SwiftUI

public struct StandardDeckCard: Card {
    public enum Rank: String {
        case ace
        case two
        case three
        case four
        case five
        case six
        case seven
        case height
        case nine
        case ten
        case jack
        case queen
        case king

        var letter: String {
            switch self {
            case .ace: return "A"
            case .two: return "2"
            case .three: return "3"
            case .four: return "4"
            case .five: return "5"
            case .six: return "6"
            case .seven: return "7"
            case .height: return "8"
            case .nine: return "9"
            case .ten: return "10"
            case .jack: return "J"
            case .queen: return "Q"
            case .king: return "K"
            }
        }
    }

    public enum Suit: String {
        case clubs
        case diamonds
        case hearts
        case spades

        var color: Color {
            switch self {
            case .clubs, .spades: return .black
            case .diamonds, .hearts: return .red
            }
        }
    }

    public let rank: Rank
    public let suit: Suit
    private(set) public var action: () -> Void
    public var foreground: some View {
        StandardCardShape()
            .strokeBorder()
            .background {
                ZStack {
                    Color.white

                    mainView

                    VStack {
                        HStack {
                            cornerView
                            Spacer()
                            cornerView
                        }.padding()
                        Spacer()
                        HStack {
                            cornerView
                            Spacer()
                            cornerView
                        }
                        .padding()
                        .rotationEffect(.radians(.pi))
                    }
                }
            }
            .aspectRatio(5/7, contentMode: .fit)
    }
    public var background: some View {
        Rectangle()
            .fill(Color.red)
            .clipShape(StandardCardShape())
    }
    public let isFacedUp: Bool = false
    public var accessibilityIdentifier: String {
        "\(rank.rawValue)-\(suit.rawValue)"
    }
    public var accessibilityFacedDownText: Text {
        Text("Faced down card")
    }
    public var accessibilityFacedUpText: Text {
        Text("\(rank.rawValue) of \(suit.rawValue)")
    }

    private var suitEmoji: String {
        switch suit {
        case .clubs: return "♣️"
        case .diamonds: return "♦️"
        case .hearts: return "♥️"
        case .spades: return "♠️"
        }
    }

    @ViewBuilder
    private var mainView: some View {
        switch rank {
        case .ace:
            Text(suitEmoji).font(.largeTitle)
        case .two, .three, .four, .five, .six, .seven, .height, .nine, .ten, .jack, .queen, .king:
            EmptyView()
        }
    }

    private var cornerView: some View {
        VStack {
            Text(rank.letter).font(.title).bold().foregroundColor(suit.color)
            Text(suitEmoji).font(.body)
        }
    }
}

private struct StandardCardShape: InsettableShape {
    var insetAmount = 0.0

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let rect = rect.insetBy(dx: insetAmount, dy: insetAmount)
        let height = rect.width < rect.height * 5/7 ? rect.width * 7/5 : rect.height
        let width = height * 5/7
        let cardRect = CGRect(x: rect.midX - width/2, y: rect.midY - height/2, width: width, height: height)
        let cornerSize = CGSize(width: height * 1/28, height: height * 1/28)
        path.addRoundedRect(in: cardRect, cornerSize: cornerSize)
        return path
    }

    func inset(by amount: CGFloat) -> some InsettableShape {
        var card = self
        card.insetAmount += amount
        return card
    }
}

public extension Card where Self == StandardDeckCard {
    static func standardDeck(
        _ rank: StandardDeckCard.Rank,
        of suit: StandardDeckCard.Suit,
        action: @escaping () -> Void = { }
    ) -> StandardDeckCard {
        StandardDeckCard(rank: rank, suit: suit, action: action)
    }
}
