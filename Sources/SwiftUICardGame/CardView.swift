import SwiftUI

struct CardView<ForegroundContent: View, BackgroundContent: View>: View {
    var isFacedUp: Bool
    let foregroundContent: () -> ForegroundContent
    let backgroundContent: () -> BackgroundContent

    var body: some View {
        VStack {
            if isFacedUp {
                foregroundContent().transition(.opacity.animation(.linear(duration: 0.01).delay(2/10)))
            } else {
                backgroundContent().transition(.opacity.animation(.linear(duration: 0.01).delay(2/10)))
                    .accessibilityLabel(Text("Faced down card"))
            }
        }
        .modifier(Card3DRotationViewModifier(isFacedUp: isFacedUp))
        .animation(.easeInOut(duration: 2/5), value: isFacedUp)
        .shadow(radius: 2, x: 2, y: 2)
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
            Button { isFacedUp.toggle() } label: {
                CardView(isFacedUp: isFacedUp) {
                    ZStack {
                        Color.blue.brightness(20/100)
                        Text("Faced Up")
                    }
                } backgroundContent: {
                    ZStack {
                        Color.red.brightness(20/100)
                        Text("Faced Down")
                    }
                }
            }
        }
    }
}
#endif
