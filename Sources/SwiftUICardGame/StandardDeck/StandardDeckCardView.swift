import SwiftUI

public struct StandardDeckCardView<BackgroundContent: View>: View {
    private let card: StandardDeckCard
    private let backgroundContent: () -> BackgroundContent

    public init(card: StandardDeckCard, backgroundContent: @escaping () -> BackgroundContent) {
        self.card = card
        self.backgroundContent = backgroundContent
    }

    public var body: some View {
        CardView(isFacedUp: card.isFacedUp) {
            StandardDeckCardForegroundView(rank: card.rank, suit: card.suit)
        } backgroundContent: {
            StandardDeckCardBackgroundView(content: backgroundContent)
        }
    }
}

#if DEBUG
struct StandardDeckCardView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
        Pile()
    }

    private struct Preview: View {
        @State private var isFacedUp = true

        var body: some View {
            Button { isFacedUp.toggle() } label: {
                StandardDeckCardView(card: StandardDeckCard(.ace, of: .spades, isFacedUp: isFacedUp)) {
                    Color.red
                }
            }
            .padding()
        }
    }

    private struct Pile: View {
        let cards: [StandardDeckCard] = [
            StandardDeckCard(.king, of: .diamonds, isFacedUp: false),
            StandardDeckCard(.queen, of: .diamonds, isFacedUp: false),
            StandardDeckCard(.jack, of: .diamonds, isFacedUp: false),
            StandardDeckCard(.ten, of: .diamonds, isFacedUp: true),
            StandardDeckCard(.nine, of: .diamonds, isFacedUp: true),
            StandardDeckCard(.eight, of: .diamonds, isFacedUp: true),
        ]
        @State private var size: Double = 50

        var body: some View {
            VStack {
                ZStack {
                    ForEach(cards, id: \.self) { card in
                        StandardDeckCardView(card: card) {
                            Color.red
                        }
                        .offset(y: 20 * Double(cards.firstIndex(of: card) ?? 0))
                    }
                }
                .frame(width: size, height: size)

                Spacer()

                Text("\(size)")
                Slider(value: $size, in: 20...300)
            }
            .padding()
        }
    }
}
#endif
