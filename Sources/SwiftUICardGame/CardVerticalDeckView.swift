import SwiftUI

public struct CardVerticalDeckView<Card: CardRepresentable>: View {
    public let cards: [Card]
    public let cardHeight: CGFloat
    public let facedDownSpacing: CGFloat
    public let facedUpSpacing: CGFloat

    public init(
        cards: [Card],
        cardHeight: CGFloat,
        facedDownSpacing: CGFloat,
        facedUpSpacing: CGFloat
    ) {
        self.cards = cards
        self.cardHeight = cardHeight
        self.facedDownSpacing = facedDownSpacing
        self.facedUpSpacing = facedUpSpacing
    }

    public var body: some View {
        ZStack(alignment: .top) {
            Color.clear
            ForEach(cardsAndYOffset, id: \.yOffset) { card, yOffset in
                CardView(card)
                    .frame(height: cardHeight)
                    .offset(x: 0, y: yOffset)
            }
        }
    }

    private var cardsAndYOffset: [(card: Card, yOffset: CGFloat)] {
        cards.reduce([]) { result, card in
            guard let previous = result.last else { return [(card, 0)] }
            let spacing = previous.card.isFacedUp ? facedUpSpacing : facedDownSpacing
            return result + [(card, previous.yOffset + spacing)]
        }
    }
}

#if DEBUG
struct CardVerticalDeckView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var cards: [StandardDeckCard] = .standard52Deck { _, _ in }
            .enumerated()
            .map { index, card in
                if index == 51 || index == 50 || index == 49 || index == 48 {
                    var lastCard = card
                    lastCard.isFacedUp = true
                    return lastCard
                }
                return card
            }
            .suffix(15)

        var body: some View {
            VStack {
                CardVerticalDeckView(cards: cards, cardHeight: 250, facedDownSpacing: 6, facedUpSpacing: 50)
                    .padding()
                Button("Next card") {
                    cards = cards
                        .enumerated()
                        .map { index, card in
                            if index == cards.count - 1 {
                                return nil
                            } else if index == cards.count - 2 {
                                var secondCard = card
                                secondCard.isFacedUp = true
                                return secondCard
                            }
                            return card
                        }
                        .compactMap { $0 }
                }.padding()
            }
        }
    }
}
#endif
