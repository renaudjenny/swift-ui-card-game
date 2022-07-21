import SwiftUI

public struct ImageCardView: View {
    let backgroundColor: Color
    let image: Image
    let isFacedUp: Bool
    let accessibilityIdentifier: String
    let accessibilityFacedDownText: Text
    let accessibilityFacedUpText: Text

    public init(
        backgroundColor: Color,
        image: Image,
        isFacedUp: Bool,
        accessibilityIdentifier: String,
        accessibilityFacedDownText: Text,
        accessibilityFacedUpText: Text
    ) {
        self.backgroundColor = backgroundColor
        self.image = image
        self.isFacedUp = isFacedUp
        self.accessibilityIdentifier = accessibilityIdentifier
        self.accessibilityFacedDownText = accessibilityFacedDownText
        self.accessibilityFacedUpText = accessibilityFacedUpText
    }

    public var body: some View {
        CardView(isFacedUp: isFacedUp) {
            foreground
        } backgroundContent: {
            background
        }
    }

    private var foreground: some View {
        image
            .renderingMode(.original)
            .resizable()
            .font(.largeTitle)
            .accessibility(label: accessibilityFacedUpText)
    }

    private var background: some View {
        backgroundColor
            .accessibility(label: accessibilityFacedDownText)
            .accessibility(identifier: accessibilityIdentifier)
    }
}

#if DEBUG
struct ImageCardView_Previews: PreviewProvider {
    private struct Preview: View {
        @State private var isFacedUp = true

        var body: some View {
            Button { isFacedUp.toggle() } label: {
                ImageCardView(
                    backgroundColor: .red,
                    image: Image(systemName: "leaf"),
                    isFacedUp: isFacedUp,
                    accessibilityIdentifier: "leaf",
                    accessibilityFacedDownText: Text("A faced down card"),
                    accessibilityFacedUpText: Text("A leaf")
                )
            }
            .buttonStyle(.plain)
            .padding()
        }
    }

    static var previews: some View {
        Preview()
    }
}
#endif
