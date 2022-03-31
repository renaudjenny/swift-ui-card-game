import SwiftUI

public struct CardDeckView<Card: CardRepresentable>: View {
    let cards: [Card]

    public var body: some View {
        GeometryReader { geometry in
            VStack(spacing: -geometry.size.height * 50/100) {
                ForEach(Array(cards.enumerated().reversed()), id: \.offset) { index, card in
                    CardView(card)
                }
            }
        }
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
                if index == 0 {
                    var firstCard = card
                    firstCard.isFacedUp = true
                    return firstCard
                }
                return card
            }

        var body: some View {
            VStack {
                CardDeckView(cards: cards)
                    .padding()
                Button("Next card") {
                    cards = cards
                        .enumerated()
                        .map { index, card in
                            guard index != 0 else { return nil }
                            if index == 1 {
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
