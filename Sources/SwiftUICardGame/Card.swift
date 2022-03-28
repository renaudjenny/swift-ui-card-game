import SwiftUI

public protocol Card {
    associatedtype ForegroundView: View
    associatedtype BackgroundView: View

    var foreground: ForegroundView { get }
    var background: BackgroundView { get }
    var isFacedUp: Bool { get }
    var accessibilityIdentifier: String { get }
    var accessibilityFacedDownText: Text { get }
    var accessibilityFacedUpText: Text { get }
    var action: () -> Void { get }
}

