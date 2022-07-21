import SwiftUI

struct Card3DRotationViewModifier: ViewModifier {
    let isFacedUp: Bool

    func body(content: Content) -> some View {
        content
            .rotation3DEffect(.radians(.pi), axis: (x: 0.0, y: 1.0, z: 0.0))
            .rotation3DEffect(
                isFacedUp ? .radians(.pi) : .zero,
                axis: (x: 0.0, y: 1.0, z: 0.0),
                perspective: 1/3
            )
            .rotation3DEffect(isFacedUp ? .zero : .radians(.pi), axis: (x: 0.0, y: 1.0, z: 0.0))
    }
}
