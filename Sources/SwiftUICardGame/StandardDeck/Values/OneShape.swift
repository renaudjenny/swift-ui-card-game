import SwiftUI

struct OneShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 51/1000,
                y: rect.midY - width * 260/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 53/1000,
                y: rect.midY + width * 429/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 199/1000,
                y: rect.midY + width * 437/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 57/1000,
                y: rect.midY + width * 516/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 197/1000,
                y: rect.midY + width * 517/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 201/1000,
                y: rect.midY - width * 426/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 65/1000,
                y: rect.midY - width * 461/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 199/1000,
                y: rect.midY - width * 498/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 113/1000,
                y: rect.midY - width * 527/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 132/1000,
                y: rect.midY - width * 319/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 27/1000,
                y: rect.midY - width * 381/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 101/1000,
                y: rect.midY - width * 169/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 272/1000,
                y: rect.midY - width * 279/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 175/1000,
                y: rect.midY - width * 127/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 50/1000,
                y: rect.midY - width * 261/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 41/1000,
                y: rect.midY - width * 196/1000
            )
        )
        return path
    }
}

#if DEBUG
struct OneShape_Previews: PreviewProvider {
    static var previews: some View {
        OneShape().frame(width: 400, height: 400)
    }
}
#endif
