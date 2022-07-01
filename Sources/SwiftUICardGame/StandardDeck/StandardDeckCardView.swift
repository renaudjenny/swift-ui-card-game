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
}
#endif
