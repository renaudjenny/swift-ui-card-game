import SwiftUI
import Algorithms

public struct StandardDeckCard: Card {
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
            suitView.aspectRatio(35/100, contentMode: .fit)
        case .two, .three:
            GeometryReader { geometry in
                verticalSuitView(count: rank.value, width: geometry.size.width)
                    .frame(width: geometry.size.width)
            }
        case .four, .six:
            GeometryReader { geometry in
                HStack {
                    verticalSuitView(count: rank.value/2, width: geometry.size.width)
                    verticalSuitView(count: rank.value/2, width: geometry.size.width)
                }.frame(width: geometry.size.width)
            }
        case .five, .nine:
            GeometryReader { geometry in
                ZStack {
                    HStack {
                        verticalSuitView(count: rank.value/2, width: geometry.size.width)
                        verticalSuitView(count: rank.value/2, width: geometry.size.width)
                    }
                    suitView(width: geometry.size.width).offset(x: 0, y: geometry.size.height * -2/100)
                }.frame(width: geometry.size.width)
            }
        case .seven:
            GeometryReader { geometry in
                ZStack {
                    HStack {
                        verticalSuitView(count: rank.value/2, width: geometry.size.width)
                        verticalSuitView(count: rank.value/2, width: geometry.size.width)
                    }
                    suitView(width: geometry.size.width)
                        .offset(x: 0, y: geometry.size.height * -16/100)
                }.frame(width: geometry.size.width)
            }
        case .height:
            GeometryReader { geometry in
                ZStack {
                    HStack {
                        verticalSuitView(count: 3, width: geometry.size.width)
                        verticalSuitView(count: 3, width: geometry.size.width)
                    }
                    suitView(width: geometry.size.width)
                        .offset(x: 0, y: geometry.size.height * -16/100)
                    suitView(width: geometry.size.width)
                        .rotationEffect(.radians(.pi))
                        .offset(x: 0, y: geometry.size.height * 20/100)
                }.frame(width: geometry.size.width)
            }
        case .ten:
            GeometryReader { geometry in
                ZStack {
                    HStack {
                        verticalSuitView(count: 4, width: geometry.size.width)
                        verticalSuitView(count: 4, width: geometry.size.width)
                    }
                    suitView(width: geometry.size.width)
                        .offset(x: 0, y: geometry.size.height * -23/100)
                    suitView(width: geometry.size.width)
                        .rotationEffect(.radians(.pi))
                        .offset(x: 0, y: geometry.size.height * 23/100)
                }.frame(width: geometry.size.width)
            }
        case .jack, .queen, .king:
            EmptyView()
        }
    }

    private func verticalSuitView(count: Int, width: CGFloat) -> some View {
        VStack {
            ForEach(Array(Array(repeating: true, count: count).interspersed(with: false).enumerated()), id: \.offset) {
                if $1 && $0 <= (count * 2 - 2)/2 {
                    suitView(width: width)
                } else if $1 {
                    suitView(width: width).rotationEffect(.radians(.pi))
                } else {
                    Spacer()
                }
            }
        }
        .padding()
    }

    private var cornerView: some View {
        VStack {
            Text(rank.letter).font(.title).bold().foregroundColor(suit.color)
            Text(suitEmoji).font(.body)
        }
    }

    private var suitView: some View {
        let size = CGSize(width: 400, height: 400)
        #if os(iOS)
        return Image(uiImage: UIGraphicsImageRenderer(size: size).image { _ in
            (suitEmoji as NSString).draw(
                in: CGRect(origin: .zero, size: size),
                withAttributes: [.font: UIFont.systemFont(ofSize: 360)]
            )
        })
        .resizable()
        .aspectRatio(contentMode: .fit)
        #elseif os(macOS)
        let image = NSImage(size: size)
        image.lockFocus()
        (suitEmoji as NSString).draw(
            in: CGRect(origin: .zero, size: size),
            withAttributes: [.font: NSFont.systemFont(ofSize: 360)]
        )
        image.unlockFocus()
        return Image(nsImage: image)
            .resizable()
            .aspectRatio(contentMode: .fit)
        #else
        return Image(systemName: "questionmark")
            .resizable()
            .aspectRatio(contentMode: .fit)
        #endif
    }

    private func suitView(width: CGFloat) -> some View { suitView.frame(width: width * 25/100) }
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
        @State private var displayedCardIndex = 9
        private let cards: [StandardDeckCard] = .standard52Deck(action: { _, _ in })
        private var displayedCard: StandardDeckCard { cards[displayedCardIndex] }

        var body: some View {
            VStack {
                displayedCard.foreground
                HStack {
                    Button("Previous") { if displayedCardIndex > 0 { displayedCardIndex -= 1 } }
                    Spacer()
                    Button("Next") { if displayedCardIndex < 51 { displayedCardIndex += 1 } }
                }
            }.padding()
        }
    }
}
#endif
