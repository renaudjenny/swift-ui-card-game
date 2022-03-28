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

struct CardViewOnTable_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            CardView(.standardDeck(.ace, of: .spades))
            CardView(.standardDeck(.two, of: .diamonds))
            CardView(.standardDeck(.queen, of: .hearts))
        }
    }
}
#endif
