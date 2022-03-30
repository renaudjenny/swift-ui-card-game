import SwiftUI

public protocol CardFaceChangeAnimatable {
    associatedtype CardFaceChangeViewModifier: ViewModifier

    var modifier: CardFaceChangeViewModifier { get }
    var transition: AnyTransition { get }
}

struct Card3DRotationViewModifier: ViewModifier {
    let isFacedUp: Bool

    func body(content: Content) -> some View {
        content
            .rotation3DEffect(
            isFacedUp ? .radians(.pi) : .zero,
            axis: (x: 0.0, y: 1.0, z: 0.0),
            perspective: 1/3
        )
    }
}

public struct CardFaceChange3DRotate: CardFaceChangeAnimatable {
    let isFacedUp: Bool
    public var modifier: some ViewModifier { Card3DRotationViewModifier(isFacedUp: isFacedUp) }
    public let transition: AnyTransition = .opacity.animation(.linear(duration: 0.01).delay(2/10))
}

public extension CardFaceChangeAnimatable where Self == CardFaceChange3DRotate {
    static func rotateTransition(isFacedUp: Bool) -> Self {
        CardFaceChange3DRotate(isFacedUp: isFacedUp)
    }
}

public struct CardNoneAnimation: CardFaceChangeAnimatable {
    public let modifier = EmptyModifier()
    public let transition: AnyTransition = .identity
}

public extension CardFaceChangeAnimatable where Self == CardNoneAnimation {
    static var none: Self { CardNoneAnimation() }
}
