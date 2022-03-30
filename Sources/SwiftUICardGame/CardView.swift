import SwiftUI

public struct CardView<C: Card>: View {
    let card: C

    public init(_ card: C) {
        self.card = card
    }

    public var body: some View {
        Button(action: card.action) {
            if card.isFacedUp {
                card.foreground
            } else {
                card.background
            }
        }.buttonStyle(.plain)
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
                Text(isFacedUp ? "Is faced up" : "Is faced down")
            }
        }
    }

    private struct PreviewCard: Card {
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
