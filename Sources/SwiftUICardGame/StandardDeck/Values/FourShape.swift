import SwiftUI

struct FourShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 31/1000,
                y: rect.midY + width * 40/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 151/1000,
                y: rect.midY + width * 44/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 68/1000,
                y: rect.midY + width * 54/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 84/1000,
                y: rect.midY - width * 447/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 127/1000,
                y: rect.midY - width * 85/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 60/1000,
                y: rect.midY - width * 358/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 197/1000,
                y: rect.midY - width * 423/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 107/1000,
                y: rect.midY - width * 513/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 215/1000,
                y: rect.midY - width * 518/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 269/1000,
                y: rect.midY + width * 34/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 184/1000,
                y: rect.midY - width * 349/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 259/1000,
                y: rect.midY - width * 53/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 151/1000,
                y: rect.midY + width * 166/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 277/1000,
                y: rect.midY + width * 91/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 284/1000,
                y: rect.midY + width * 149/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 18/1000,
                y: rect.midY + width * 169/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 67/1000,
                y: rect.midY + width * 173/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 47/1000,
                y: rect.midY + width * 448/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 13/1000,
                y: rect.midY + width * 326/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 162/1000,
                y: rect.midY + width * 444/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 73/1000,
                y: rect.midY + width * 515/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 148/1000,
                y: rect.midY + width * 516/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 179/1000,
                y: rect.midY + width * 164/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 176/1000,
                y: rect.midY + width * 303/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 172/1000,
                y: rect.midY + width * 28/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 283/1000,
                y: rect.midY + width * 170/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 325/1000,
                y: rect.midY + width * 42/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 157/1000,
                y: rect.midY - width * 129/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 171/1000,
                y: rect.midY - width * 54/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 45/1000,
                y: rect.midY - width * 138/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 143/1000,
                y: rect.midY - width * 218/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 57/1000,
                y: rect.midY - width * 219/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 31/1000,
                y: rect.midY + width * 40/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 32/1000,
                y: rect.midY - width * 46/1000
            )
        )
        return path
    }
}

#if DEBUG
struct FourShape_Previews: PreviewProvider {
    static var previews: some View {
        FourShape().frame(width: 400, height: 400)
    }
}
#endif
