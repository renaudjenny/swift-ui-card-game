import SwiftUI

struct ZeroShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 160/1000,
                y: rect.midY + width * 7/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 139/1000,
                y: rect.midY + width * 214/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 149/1000,
                y: rect.midY + width * 468/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 107/1000,
                y: rect.midY + width * 402/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 142/1000,
                y: rect.midY - width * 183/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 175/1000,
                y: rect.midY + width * 14/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 138/1000,
                y: rect.midY - width * 210/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 73/1000,
                y: rect.midY - width * 458/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 86/1000,
                y: rect.midY - width * 416/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 161/1000,
                y: rect.midY + width * 8/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 164/1000,
                y: rect.midY - width * 115/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX + width * 305/1000,
                y: rect.midY - width * 1/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 10/1000,
                y: rect.midY + width * 498/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 306/1000,
                y: rect.midY + width * 207/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 250/1000,
                y: rect.midY + width * 494/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 304/1000,
                y: rect.midY + width * 19/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 99/1000,
                y: rect.midY + width * 497/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 300/1000,
                y: rect.midY + width * 382/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 11/1000,
                y: rect.midY - width * 495/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 303/1000,
                y: rect.midY - width * 185/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 259/1000,
                y: rect.midY - width * 489/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 305/1000,
                y: rect.midY + width * 1/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 215/1000,
                y: rect.midY - width * 498/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 300/1000,
                y: rect.midY - width * 261/1000
            )
        )
        return path
    }
}

#if DEBUG
struct ZeroShape_Previews: PreviewProvider {
    static var previews: some View {
        ZeroShape().frame(width: 400, height: 400)
    }
}
#endif
