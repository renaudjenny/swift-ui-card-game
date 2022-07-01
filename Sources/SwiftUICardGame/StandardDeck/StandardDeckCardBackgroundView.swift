import SwiftUI

struct StandardDeckCardBackgroundView<Content: View>: View {
    let content: () -> Content

    var body: some View {
        content()
            .aspectRatio(5/7, contentMode: .fit)
            .clipShape(StandardCardShape())
            .overlay(StandardCardShape().strokeBorder(lineWidth: 1/4))
    }
}

#if DEBUG
struct StandardDeckCardBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        StandardDeckCardBackgroundView {
            Color.red
        }
        .padding()
    }
}
#endif
