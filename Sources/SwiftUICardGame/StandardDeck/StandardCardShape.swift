import SwiftUI

struct StandardCardShape: InsettableShape {
    var insetAmount = 0.0

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let rect = rect.insetBy(dx: insetAmount, dy: insetAmount)
        let height = rect.width < rect.height * 5/7 ? rect.width * 7/5 : rect.height
        let width = height * 5/7
        let cardRect = CGRect(x: rect.midX - width/2, y: rect.midY - height/2, width: width, height: height)
        let cornerSize = CGSize(width: height * 1/28, height: height * 1/28)
        path.addRoundedRect(in: cardRect, cornerSize: cornerSize)
        return path
    }

    func inset(by amount: CGFloat) -> some InsettableShape {
        var card = self
        card.insetAmount += amount
        return card
    }
}
