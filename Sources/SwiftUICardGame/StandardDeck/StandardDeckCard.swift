import SwiftUI

public struct StandardDeckCard<BackgroundContent: View>: View {
    @Environment(\.colorScheme) private var colorScheme

    public var body: some View {
        VStack {
            if isFacedUp {
                foreground.transition(.opacity.animation(.linear(duration: 0.01).delay(2/10)))
            } else {
                background.transition(.opacity.animation(.linear(duration: 0.01).delay(2/10)))
            }
        }
        .modifier(Card3DRotationViewModifier(isFacedUp: isFacedUp))
        .animation(.easeInOut(duration: 2/5), value: isFacedUp)
        .shadow(radius: 2, x: 2, y: 2)
    }



    public let rank: Rank
    public let suit: Suit
    public let backgroundContent: () -> BackgroundContent
    public var foreground: some View {
        ZStack {
            colorScheme == .dark ? Color.black.brightness(10/100) : Color.white.brightness(-5/100)
            mainView
            cornerViews
        }
        .aspectRatio(5/7, contentMode: .fit)
        .clipShape(StandardCardShape())
        .overlay(StandardCardShape().strokeBorder(lineWidth: 1/4))
    }
    public var background: some View {
        backgroundContent()
            .aspectRatio(5/7, contentMode: .fit)
            .clipShape(StandardCardShape())
            .overlay(StandardCardShape().strokeBorder(lineWidth: 1/4))
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

    public init(_ rank: Rank, of suit: Suit, isFacedUp: Bool, backgroundContent: @escaping () -> BackgroundContent) {
        self.rank = rank
        self.suit = suit
        self.isFacedUp = isFacedUp
        self.backgroundContent = backgroundContent
    }

    private var mainView: some View {
        GeometryReader { geometry in
            if min(geometry.size.width, geometry.size.height) < 80 {
                EmptyView()
            } else {
                VStack {
                    switch (rank, suit) {
                    case (.ace, _):
                        suitView.aspectRatio(35/100, contentMode: .fit)
                    case (.two, _), (.three, _), (.four, _),
                        (.five, _), (.six, _), (.seven, _), (.eight, _), (.nine, _), (.ten, _):
                        suitViews(count: rank.value, geometry: geometry)
                            .frame(width: geometry.size.width * 60/100, height: geometry.size.height * 90/100)
                    case (.king, .diamonds):
                        EmptyView()
//                        Image(fromBundleName: "King of Diamonds")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
                    case (.king, .clubs):
                        EmptyView()
//                        Image(fromBundleName: "King of Clubs")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
                    case (.jack, _), (.queen, _), (.king, _):
                        EmptyView()
                    }
                }
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
                    .offset(x: 0, y: geometry.size.height * -12/100)
            }
        case 8:
            let side = VStack {
                suitView(availableWidth: geometry.size.width)
                suitView(availableWidth: geometry.size.width)
                suitView(rotate: true, availableWidth: geometry.size.width)
                suitView(rotate: true, availableWidth: geometry.size.width)
            }
            HStack {
                side
                Spacer()
                side
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
            rank.view.foregroundColor(.suit(suit, colorScheme: colorScheme))
            suitView
        }
    }

    private func suitView(rotate: Bool = false, availableWidth: CGFloat? = nil) -> some View {
        suit.view
            .rotation(.radians(rotate ? .pi : 0))
            .fill(Color.suit(suit, colorScheme: colorScheme), style: .init(eoFill: true))
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

public extension StandardDeckCard {
    var flipped: Self {
        var card = self
        card.isFacedUp.toggle()
        return card
    }
}

public extension StandardDeckCard {
    static func standard52Deck(backgroundContent: @escaping () -> BackgroundContent) -> [Self] {
        Suit.allCases.flatMap { suit in
            Rank.allCases.map { rank in
                StandardDeckCard(rank, of: suit, isFacedUp: false, backgroundContent: backgroundContent)
            }
        }
    }
}

#if DEBUG
struct StandardDeckCard_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var isFacedUp = true

        var body: some View {
            VStack {
                Button { isFacedUp.toggle() } label: {
                    StandardDeckCard(.ace, of: .spades, isFacedUp: isFacedUp) { Color.red }.padding()
                }
                Text(isFacedUp ? "Is faced up" : "Is faced down").animation(nil)
            }
            .preferredColorScheme(.dark)
        }
    }
}

struct CardAllStandardDeckCards_Previews: PreviewProvider {
    static var previews: some View {
        Preview().preferredColorScheme(.dark)
    }

    private struct Preview: View {
        @State private var displayedCardIndex = 15
        @State private var maxHeight: CGFloat = 800
        private let cards: [StandardDeckCard<Color>] = StandardDeckCard.standard52Deck { Color.red }
        private var displayedCard: StandardDeckCard<Color> { cards[displayedCardIndex].flipped }

        var body: some View {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    displayedCard.frame(maxHeight: 50)
                    Spacer()
                    displayedCard.frame(maxHeight: maxHeight)
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
