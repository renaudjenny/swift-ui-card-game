import SwiftUI

struct TwoShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 234/1000,
                y: rect.midY + width * 294/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 273/1000,
                y: rect.midY + width * 397/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 293/1000,
                y: rect.midY + width * 269/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 344/1000,
                y: rect.midY + width * 367/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 89/1000,
                y: rect.midY + width * 500/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 84/1000,
                y: rect.midY + width * 451/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 75/1000,
                y: rect.midY + width * 483/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 316/1000,
                y: rect.midY + width * 297/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 243/1000,
                y: rect.midY + width * 501/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 297/1000,
                y: rect.midY + width * 383/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 181/1000,
                y: rect.midY + width * 272/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 327/1000,
                y: rect.midY + width * 222/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 204/1000,
                y: rect.midY + width * 181/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 110/1000,
                y: rect.midY + width * 327/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 149/1000,
                y: rect.midY + width * 424/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 66/1000,
                y: rect.midY + width * 376/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 45/1000,
                y: rect.midY - width * 499/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 250/1000,
                y: rect.midY - width * 21/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 374/1000,
                y: rect.midY - width * 492/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 269/1000,
                y: rect.midY - width * 101/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 212/1000,
                y: rect.midY - width * 495/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 383/1000,
                y: rect.midY - width * 301/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 157/1000,
                y: rect.midY - width * 159/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 186/1000,
                y: rect.midY + width * 24/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 69/1000,
                y: rect.midY - width * 92/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 66/1000,
                y: rect.midY - width * 368/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 223/1000,
                y: rect.midY - width * 217/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 151/1000,
                y: rect.midY - width * 353/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 84/1000,
                y: rect.midY - width * 257/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 7/1000,
                y: rect.midY - width * 379/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 94/1000,
                y: rect.midY - width * 342/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 234/1000,
                y: rect.midY + width * 294/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 64/1000,
                y: rect.midY - width * 86/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 92/1000,
                y: rect.midY + width * 137/1000
            )
        )
        return path
    }
}

#if DEBUG
struct TwoShape_Previews: PreviewProvider {
    static var previews: some View {
        TwoShape().frame(width: 400, height: 400)
    }
}
#endif
