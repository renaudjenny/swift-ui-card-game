import SwiftUI

struct AceShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 32/1000,
                y: rect.midY - width * 272/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 162/1000,
                y: rect.midY + width * 140/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 106/1000,
                y: rect.midY + width * 44/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 41/1000,
                y: rect.midY + width * 62/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 31/1000,
                y: rect.midY - width * 272/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX - width * 174/1000,
                y: rect.midY + width * 202/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 268/1000,
                y: rect.midY + width * 442/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 374/1000,
                y: rect.midY + width * 408/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 304/1000,
                y: rect.midY + width * 541/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 408/1000,
                y: rect.midY + width * 489/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 18/1000,
                y: rect.midY - width * 454/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 241/1000,
                y: rect.midY + width * 6/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 119/1000,
                y: rect.midY - width * 422/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 15/1000,
                y: rect.midY - width * 519/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 81/1000,
                y: rect.midY - width * 511/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 389/1000,
                y: rect.midY + width * 388/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 258/1000,
                y: rect.midY - width * 51/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 230/1000,
                y: rect.midY + width * 404/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 426/1000,
                y: rect.midY + width * 509/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 268/1000,
                y: rect.midY + width * 548/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 173/1000,
                y: rect.midY + width * 202/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 30/1000,
                y: rect.midY + width * 178/1000
            )
        )
        return path
    }
}

#if DEBUG
struct AceShape_Previews: PreviewProvider {
    static var previews: some View {
        AceShape().fill(style: .init(eoFill: true)).frame(width: 400, height: 400)
    }
}
#endif
