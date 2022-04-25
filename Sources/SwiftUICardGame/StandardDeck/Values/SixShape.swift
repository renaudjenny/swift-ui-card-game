import SwiftUI

struct SixShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 215/1000,
                y: rect.midY + width * 35/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 111/1000,
                y: rect.midY - width * 378/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 219/1000,
                y: rect.midY - width * 263/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 45/1000,
                y: rect.midY - width * 417/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 166/1000,
                y: rect.midY - width * 464/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 195/1000,
                y: rect.midY - width * 326/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 261/1000,
                y: rect.midY - width * 421/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 66/1000,
                y: rect.midY - width * 490/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 121/1000,
                y: rect.midY - width * 488/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 350/1000,
                y: rect.midY + width * 84/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 190/1000,
                y: rect.midY - width * 482/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 357/1000,
                y: rect.midY - width * 192/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 33/1000,
                y: rect.midY + width * 484/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 329/1000,
                y: rect.midY + width * 409/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 126/1000,
                y: rect.midY + width * 477/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 360/1000,
                y: rect.midY + width * 172/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 218/1000,
                y: rect.midY + width * 481/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 350/1000,
                y: rect.midY + width * 359/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 59/1000,
                y: rect.midY - width * 74/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 356/1000,
                y: rect.midY + width * 38/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 253/1000,
                y: rect.midY - width * 74/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 214/1000,
                y: rect.midY + width * 37/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 125/1000,
                y: rect.midY - width * 71/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX - width * 175/1000,
                y: rect.midY + width * 221/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 32/1000,
                y: rect.midY + width * 70/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 116/1000,
                y: rect.midY + width * 71/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 205/1000,
                y: rect.midY + width * 172/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 116/1000,
                y: rect.midY + width * 70/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 201/1000,
                y: rect.midY + width * 91/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 24/1000,
                y: rect.midY + width * 333/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 201/1000,
                y: rect.midY + width * 297/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 92/1000,
                y: rect.midY + width * 331/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 174/1000,
                y: rect.midY + width * 221/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 50/1000,
                y: rect.midY + width * 331/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 145/1000,
                y: rect.midY + width * 289/1000
            )
        )
        return path
    }
}

#if DEBUG
struct SixShape_Previews: PreviewProvider {
    static var previews: some View {
        SixShape().frame(width: 400, height: 400)
    }
}
#endif
