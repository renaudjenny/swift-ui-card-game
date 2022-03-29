import SwiftUI

public struct CardView<C: Card>: View {
    let card: C

    public init(_ card: C) {
        self.card = card
    }

    public var body: some View {
        card.foreground
    }
}

#if DEBUG
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(.standardDeck(.ace, of: .spades))
    }
}

struct CardViewAllCards_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var displayedCardIndex = 7
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
