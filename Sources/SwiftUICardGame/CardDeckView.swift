import SwiftUI

public struct CardDeckView<Card: CardRepresentable>: View {
    public let cards: [Card]
    public let facedDownProportionalSpacing: CGFloat
    public let facedUpProportionalSpacing: CGFloat

    public init(
        cards: [Card],
        facedDownProportionalSpacing: CGFloat = 3/100,
        facedUpProportionalSpacing: CGFloat = 6/100
    ) {
        self.cards = cards
        self.facedDownProportionalSpacing = facedDownProportionalSpacing
        self.facedUpProportionalSpacing = facedUpProportionalSpacing
    }

    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(Array(cards.enumerated()), id: \.offset) { index, card in
                    CardView(card)
                        .frame(height: cardHeight(availabelHeight: geometry.size.height))
                        .offset(x: 0, y: yOffset(index: index, card: card, height: geometry.size.height))
                }
            }
        }
        .border(Color.red)
    }

    private func cardHeight(availabelHeight: CGFloat) -> CGFloat {
        let facedUpCount = CGFloat(cards.filter(\.isFacedUp).count)
        let facedDownCount = CGFloat(cards.count)
        let facedUpHeight = facedUpCount * availabelHeight * facedUpProportionalSpacing
        let facedDownHeight = facedDownCount * availabelHeight * facedDownProportionalSpacing
        return availabelHeight - facedUpHeight - facedDownHeight
    }

    private func yOffset(index: Int, card: Card, height: CGFloat) -> CGFloat {
        guard index != 0 else { return 0 }
        let previousCard = cards[index - 1]
        let index = CGFloat(index)
        return index * height * (previousCard.isFacedUp ? facedUpProportionalSpacing : facedDownProportionalSpacing)
    }
}

#if DEBUG
struct CardDeckView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var cards: [StandardDeckCard] = .standard52Deck { _, _ in }
            .enumerated()
            .map { index, card in
                if index == 51 || index == 50 {
                    var lastCard = card
                    lastCard.isFacedUp = true
                    return lastCard
                }
                return card
            }

        var body: some View {
            VStack {
                CardDeckView(cards: cards.suffix(5))
                    .padding()
                Button("Next card") {
                    cards = cards
                        .enumerated()
                        .map { index, card in
                            guard index != 0 else { return nil }
                            if index == cards.count - 1 {
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
