import SwiftUI

struct StandardDeckCardForegroundView: View {
    let rank: Rank
    let suit: Suit
    @Environment(\.colorScheme) private var colorScheme

    var body: some View {
        ZStack {
            colorScheme == .dark ? Color.black.brightness(10/100) : Color.white.brightness(-5/100)
            mainView
            cornerViews
        }
        .aspectRatio(5/7, contentMode: .fit)
        .clipShape(StandardCardShape())
        .overlay(StandardCardShape().strokeBorder(lineWidth: 1/4))
        .accessibilityIdentifier("\(rank.rawValue)-\(suit.rawValue)")
        .accessibilityLabel(Text(
            "\(rank.rawValue) of \(suit.rawValue)",
            comment: "Rank of Suite. For instance: Ace of Spades"
        ))
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
                        suitViews(count: rank.value, size: geometry.size)
                            .frame(width: geometry.size.width * 60/100, height: geometry.size.height * 55/100)
//                    case (.king, .diamonds):
//                        EmptyView()
//                        Image(fromBundleName: "King of Diamonds")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                    case (.king, .clubs):
//                        EmptyView()
//                        Image(fromBundleName: "King of Clubs")
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
                    case (.king, _):
                        KingSilhouetteShape()
                            .foregroundColor(.suit(suit, colorScheme: colorScheme))
                            .frame(height: geometry.size.height * 60/100)
                    case (.queen, _):
                        QueenSilhouetteShape()
                            .foregroundColor(.suit(suit, colorScheme: colorScheme))
                            .frame(height: geometry.size.height * 60/100)
                    case (.jack, _):
                        EmptyView()
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height)
            }
        }
    }

    // swiftlint:disable function_body_length
    @ViewBuilder
    private func suitViews(count: Int, size: CGSize) -> some View {
        switch count {
        case 2:
            VStack {
                suitView(availableWidth: size.width)
                Spacer().frame(maxHeight: .infinity)
                suitView(rotate: true, availableWidth: size.width)
            }
        case 3:
            ZStack {
                AnyView(suitViews(count: 2, size: size))
                suitView(availableWidth: size.width)
            }
        case 4:
            HStack {
                AnyView(suitViews(count: 2, size: size))
                Spacer()
                AnyView(suitViews(count: 2, size: size))
            }
        case 5:
            ZStack {
                AnyView(suitViews(count: 4, size: size))
                suitView(availableWidth: size.width)
            }
        case 6:
            HStack {
                AnyView(suitViews(count: 3, size: size))
                Spacer()
                AnyView(suitViews(count: 3, size: size))
            }
        case 7:
            ZStack {
                AnyView(suitViews(count: 6, size: size))
                suitView(availableWidth: size.width)
                    .offset(x: 0, y: size.height * -10/100)
            }
        case 8:
            let side = VStack {
                suitView(availableWidth: size.width)
                suitView(availableWidth: size.width)
                suitView(rotate: true, availableWidth: size.width)
                suitView(rotate: true, availableWidth: size.width)
            }
            HStack {
                side
                Spacer()
                side
            }
        case 9:
            ZStack {
                AnyView(suitViews(count: 8, size: size))
                suitView(availableWidth: size.width * 85/100)
            }
        case 10:
            ZStack {
                AnyView(suitViews(count: 8, size: size))
                AnyView(suitViews(count: 2, size: size.applying(CGAffineTransform(scaleX: 85/100, y: 85/100))))
            }
        default:
            EmptyView()
        }
    }
    // swiftlint:enable function_body_length

    private var cornerViews: some View {
        GeometryReader { geometry in
            if min(geometry.size.width, geometry.size.height) < 80 {
                VStack(spacing: 0) {
                    minimizedCornerView
                        .frame(height: geometry.size.height * 1/4)
                        .padding(.top, 4)
                    suitView.padding(4)
                }
            } else {
                let height = geometry.size.height * 20/100

                ZStack {
                    VStack {
                        HStack {
                            cornerView.frame(height: height)
                            Spacer().frame(maxWidth: .infinity)
                            cornerView.frame(height: height)

                        }
                        Spacer()
                        HStack {
                            cornerView
                                .frame(height: height)
                                .rotationEffect(.radians(.pi))
                            Spacer().frame(maxWidth: .infinity)
                            cornerView
                                .frame(height: height)
                                .rotationEffect(.radians(.pi))
                        }
                    }
                }
                .padding(8)
            }
        }
    }

    private var minimizedCornerView: some View {
        HStack(spacing: 0) {
            rank.view.foregroundColor(.suit(suit, colorScheme: colorScheme))
            suitView
        }
    }

    private var cornerView: some View {
        HStack(spacing: 0) {
            rank.view.foregroundColor(.suit(suit, colorScheme: colorScheme))
            suitView.aspectRatio(45/100, contentMode: .fit)
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

#if DEBUG
struct StandardDeckCardForegroundView_Previews: PreviewProvider {
    static var previews: some View {
        StandardDeckCardForegroundView(rank: .ace, suit: .spades).padding()
    }
}

struct CardByRanks_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var rank: Rank = .seven
        @State private var maxHeight: CGFloat = 800
        private var displayedCards: [StandardDeckCard] {
            [StandardDeckCard].standard52Deck.filter { $0.rank == rank }.map {
                var card = $0
                card.isFacedUp = true
                return card
            }
        }

        var body: some View {
            VStack {
                Spacer()
                HStack {
                    VStack {
                        StandardDeckCardView(card: displayedCards[0], backgroundContent: EmptyView.init)
                        StandardDeckCardView(card: displayedCards[1], backgroundContent: EmptyView.init)
                    }
                    VStack {
                        StandardDeckCardView(card: displayedCards[2], backgroundContent: EmptyView.init)
                        StandardDeckCardView(card: displayedCards[3], backgroundContent: EmptyView.init)
                    }
                }
                .frame(maxHeight: maxHeight)
                Spacer()
                Slider(value: $maxHeight, in: 10...1000) {
                    Text("Height")
                }
            }.padding()
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
        private let cards: [StandardDeckCard] = .standard52Deck
        private var displayedCard: StandardDeckCard {
            var card = cards[displayedCardIndex]
            card.isFacedUp = true
            return card
        }

        var body: some View {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    StandardDeckCardForegroundView(rank: displayedCard.rank, suit: displayedCard.suit)
                        .frame(maxHeight: 50)
                    Spacer()
                    StandardDeckCardForegroundView(rank: displayedCard.rank, suit: displayedCard.suit)
                        .frame(maxHeight: maxHeight)
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
