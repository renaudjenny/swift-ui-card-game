import SwiftUI

public struct CardView<Card: CardRepresentable, ChangeFaceAnimation: CardFaceChangeAnimatable>: View {
    let card: Card
    let changeFaceAnimation: ChangeFaceAnimation

    public init(_ card: Card, changeFaceAnimation: ChangeFaceAnimation) {
        self.card = card
        self.changeFaceAnimation = changeFaceAnimation
    }

    public var body: some View {
        Button(action: card.action) {
            if card.isFacedUp {
                card.foreground.transition(changeFaceAnimation.transition)
            } else {
                card.background.transition(changeFaceAnimation.transition)
            }
        }
        .buttonStyle(.plain)
        .modifier(changeFaceAnimation.modifier)
        .animation(.easeInOut(duration: 2/5), value: card.isFacedUp)
    }
}

public extension CardView where ChangeFaceAnimation == CardFaceChange3DRotate {
    init(_ card: Card) {
        self.card = card
        self.changeFaceAnimation = .rotateTransition(isFacedUp: card.isFacedUp)
    }
}

#if DEBUG
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        Preview()
    }

    private struct Preview: View {
        @State private var isFacedUp = true

        var body: some View {
            VStack {
                CardView(
                    PreviewCard(isFacedUp: isFacedUp) { isFacedUp.toggle() }
                ).padding()
                Text(isFacedUp ? "Is faced up" : "Is faced down").animation(nil)
            }
        }
    }

    private struct PreviewCard: CardRepresentable {
        var foreground: some View {
            ZStack {
                Rectangle().strokeBorder(lineWidth: 2)
                Circle().strokeBorder(Color.red, lineWidth: 15).padding()
            }
        }

        var background: some View {
            LinearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
        }

        var isFacedUp: Bool
        var accessibilityIdentifier: String { "Preview" }
        var accessibilityFacedUpText: Text { Text("Preview faced up") }
        var accessibilityFacedDownText: Text { Text("Preview faced down") }
        var action: () -> Void
    }
}
#endif
