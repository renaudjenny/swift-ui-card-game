import SwiftUI

public struct StandardDeckCard: CardRepresentable {
    public enum Rank: String, CaseIterable {
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

        var value: Int {
            guard self != .ace else { return 14 }
            return (Rank.allCases.firstIndex(of: self) ?? 0) + 1
        }
    }

    public enum Suit: String, CaseIterable {
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
        ZStack {
            Color.white
            mainView
            cornerViews
        }
        .aspectRatio(5/7, contentMode: .fit)
        .clipShape(StandardCardShape())
        .overlay(StandardCardShape().strokeBorder())
    }
    public var background: some View {
        Rectangle()
            .fill(Color.red)
            .clipShape(StandardCardShape())
            .overlay(StandardCardShape().strokeBorder())
    }
    public var isFacedUp: Bool = false
    public var accessibilityIdentifier: String {
        "\(rank.rawValue)-\(suit.rawValue)"
    }
    public var accessibilityFacedDownText: Text {
        Text("Faced down card")
    }
    public var accessibilityFacedUpText: Text {
        Text("\(rank.rawValue) of \(suit.rawValue)")
    }

    @ViewBuilder
    private var mainView: some View {
        GeometryReader { geometry in
            if min(geometry.size.width, geometry.size.height) < 80 {
                EmptyView()
            } else {
                VStack {
                    switch rank {
                    case .ace:
                        suitView.aspectRatio(35/100, contentMode: .fit)
                    case .two, .three, .four, .five, .six, .seven, .height, .nine, .ten:
                        suitViews(count: rank.value, geometry: geometry)
                    case .jack, .queen, .king:
                        EmptyView()
                    }
                }
                .frame(width: geometry.size.width * 60/100, height: geometry.size.height * 90/100)
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }

    // swiftlint:disable function_body_length
    @ViewBuilder
    private func suitViews(count: Int, geometry: GeometryProxy) -> some View {
        switch count {
        case 2:
            VStack {
                suitView(availableWidth: geometry.size.width)
                Spacer()
                suitView(rotate: true, availableWidth: geometry.size.width)
            }
        case 3:
            ZStack {
                AnyView(suitViews(count: 2, geometry: geometry))
                suitView(availableWidth: geometry.size.width)
            }
        case 4:
            HStack {
                AnyView(suitViews(count: 2, geometry: geometry))
                Spacer()
                AnyView(suitViews(count: 2, geometry: geometry))
            }
        case 5:
            ZStack {
                AnyView(suitViews(count: 4, geometry: geometry))
                suitView(availableWidth: geometry.size.width)
            }
        case 6:
            HStack {
                AnyView(suitViews(count: 3, geometry: geometry))
                Spacer()
                AnyView(suitViews(count: 3, geometry: geometry))
            }
        case 7:
            ZStack {
                AnyView(suitViews(count: 6, geometry: geometry))
                suitView(availableWidth: geometry.size.width)
                    .offset(x: 0, y: geometry.size.height * -16/100)
            }
        case 8:
            HStack {
                VStack {
                    suitView(availableWidth: geometry.size.width)
                    Spacer()
                    suitView(availableWidth: geometry.size.width)
                    Spacer()
                    suitView(rotate: true, availableWidth: geometry.size.width)
                    Spacer()
                    suitView(rotate: true, availableWidth: geometry.size.width)
                }
                Spacer()
                VStack {
                    suitView(availableWidth: geometry.size.width)
                    Spacer()
                    suitView(availableWidth: geometry.size.width)
                    Spacer()
                    suitView(rotate: true, availableWidth: geometry.size.width)
                    Spacer()
                    suitView(rotate: true, availableWidth: geometry.size.width)
                }
            }
        case 9:
            ZStack {
                AnyView(suitViews(count: 8, geometry: geometry))
                suitView(availableWidth: geometry.size.width)
                    .offset(x: 0, y: geometry.size.height * -2/100)
            }
        case 10:
            ZStack {
                AnyView(suitViews(count: 8, geometry: geometry))
                suitView(availableWidth: geometry.size.width)
                    .offset(x: 0, y: geometry.size.height * -23/100)
                suitView(rotate: true, availableWidth: geometry.size.width)
                    .offset(x: 0, y: geometry.size.height * 21/100)
            }
        default:
            EmptyView()
        }
    }
    // swiftlint:enable function_body_length

    private var cornerViews: some View {
        GeometryReader { geometry in
            if min(geometry.size.width, geometry.size.height) < 80 {
                cornerView
                    .aspectRatio(95/100, contentMode: .fit)
                    .frame(width: geometry.size.width, height: geometry.size.height)
            } else {
                let width = geometry.size.width * 20/100
                let height = geometry.size.height * 20/100

                ZStack {
                    cornerView
                        .frame(width: width, height: height)
                        .offset(x: geometry.size.width * 2/100, y: geometry.size.height * 4/100)
                    cornerView
                        .frame(width: width, height: height)
                        .rotationEffect(.radians(.pi))
                        .offset(x: geometry.size.width * 2/100, y: geometry.size.height * 76/100)
                    cornerView
                        .frame(width: width, height: height)
                        .offset(x: geometry.size.width * 80/100, y: geometry.size.height * 4/100)
                    cornerView
                        .frame(width: width, height: height)
                        .rotationEffect(.radians(.pi))
                        .offset(x: geometry.size.width * 80/100, y: geometry.size.height * 76/100)
                }
            }
        }
    }

    private var cornerView: some View {
        VStack {
            switch rank {
            case .ace, .seven, .height, .nine, .ten:
                Text(rank.letter).font(.title).bold().foregroundColor(suit.color)
            case .two:
                TwoShape().foregroundColor(suit.color)
            case .three:
                ThreeShape().foregroundColor(suit.color)
            case .four:
                FourShape().foregroundColor(suit.color)
            case .five:
                FiveShape().foregroundColor(suit.color)
            case .six:
                SixShape().foregroundColor(suit.color)
            case .jack:
                JackShape().foregroundColor(suit.color)
            case .queen:
                QueenShape()
                    .fill(style: .init(eoFill: true))
                    .foregroundColor(suit.color)
            case .king: KingShape().foregroundColor(suit.color)
            }
            suitView
        }
    }

    private func suitView(rotate: Bool = false, availableWidth: CGFloat? = nil) -> some View {
        VStack {
            switch suit {
            case .clubs:
                ClubsShape().rotation(.radians(rotate ? .pi : 0)).fill(Color.black, style: .init(eoFill: true))
            case .hearts:
                HeartsShape().rotation(.radians(rotate ? .pi : 0)).fill(Color.red, style: .init(eoFill: true))
            case .diamonds:
                DiamondsShape().rotation(.radians(rotate ? .pi : 0)).fill(Color.red, style: .init(eoFill: true))
            case .spades:
                SpadesShape().rotation(.radians(rotate ? .pi : 0)).fill(Color.black, style: .init(eoFill: true))

            }
        }
        .frame(width: availableWidth.map { $0 * 20/100 })
    }

    private var suitView: some View { suitView() }
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

public extension CardRepresentable where Self == StandardDeckCard {
    static func standardDeck(
        _ rank: StandardDeckCard.Rank,
        of suit: StandardDeckCard.Suit,
        action: @escaping () -> Void = { }
    ) -> StandardDeckCard {
        StandardDeckCard(rank: rank, suit: suit, action: action)
    }
}

public extension Array where Element == StandardDeckCard {
    static func standard52Deck(action: @escaping (StandardDeckCard.Rank, StandardDeckCard.Suit) -> Void) -> Self {
        StandardDeckCard.Suit.allCases.flatMap { suit in
            StandardDeckCard.Rank.allCases.map { rank in
                StandardDeckCard(rank: rank, suit: suit) { action(rank, suit) }
            }
        }
    }
}

#if DEBUG
struct CardViewAllStandardDeckCards_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var displayedCardIndex = 25
        @State private var maxHeight: CGFloat = 800
        private let cards: [StandardDeckCard] = .standard52Deck(action: { _, _ in })
        private var displayedCard: StandardDeckCard { cards[displayedCardIndex] }

        var body: some View {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    displayedCard.foreground.frame(maxHeight: 50)
                    Spacer()
                    displayedCard.foreground.frame(maxHeight: maxHeight)
                    Spacer()
                    Spacer()
                    Spacer()
                }
                Spacer()
                HStack {
                    Button("Previous") { if displayedCardIndex > 0 { displayedCardIndex -= 1 } }
                    Spacer()
                    Button("Next") { if displayedCardIndex < 51 { displayedCardIndex += 1 } }
                }
                Slider(value: $maxHeight, in: 10...1000) {
                    Text("Height")
                }
            }.padding()
        }
    }
}
#endif
