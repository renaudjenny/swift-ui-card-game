import SwiftUI

struct ThreeShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 118/1000,
                y: rect.midY - width * 139/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 52/1000,
                y: rect.midY - width * 26/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 240/1000,
                y: rect.midY - width * 97/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 142/1000,
                y: rect.midY + width * 34/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 171/1000,
                y: rect.midY + width * 267/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 335/1000,
                y: rect.midY + width * 90/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 81/1000,
                y: rect.midY + width * 550/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 250/1000,
                y: rect.midY + width * 350/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 220/1000,
                y: rect.midY + width * 221/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 317/1000,
                y: rect.midY + width * 275/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 10/1000,
                y: rect.midY + width * 497/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 151/1000,
                y: rect.midY + width * 496/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 285/1000,
                y: rect.midY + width * 193/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 177/1000,
                y: rect.midY + width * 497/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 277/1000,
                y: rect.midY + width * 339/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 61/1000,
                y: rect.midY - width * 120/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 282/1000,
                y: rect.midY - width * 36/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 81/1000,
                y: rect.midY - width * 495/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 171/1000,
                y: rect.midY - width * 264/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 155/1000,
                y: rect.midY - width * 494/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 220/1000,
                y: rect.midY - width * 417/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 175/1000,
                y: rect.midY - width * 490/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 132/1000,
                y: rect.midY - width * 341/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 280/1000,
                y: rect.midY - width * 325/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 176/1000,
                y: rect.midY - width * 275/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 33/1000,
                y: rect.midY - width * 222/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 75/1000,
                y: rect.midY - width * 430/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 66/1000,
                y: rect.midY - width * 355/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 118/1000,
                y: rect.midY - width * 139/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 71/1000,
                y: rect.midY - width * 162/1000
            )
        )
        return path
    }
}

#if DEBUG
struct ThreeShape_Previews: PreviewProvider {
    static var previews: some View {
        ThreeShape().frame(width: 400, height: 400)
    }
}
#endif
