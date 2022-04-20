import SwiftUI

// swiftlint:disable function_body_length
struct QueenShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 198/1000,
                y: rect.midY + width * 250/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 98/1000,
                y: rect.midY + width * 283/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 115/1000,
                y: rect.midY + width * 171/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 53/1000,
                y: rect.midY + width * 164/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 215/1000,
                y: rect.midY - width * 271/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 319/1000,
                y: rect.midY + width * 227/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 396/1000,
                y: rect.midY - width * 119/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 177/1000,
                y: rect.midY - width * 248/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 159/1000,
                y: rect.midY - width * 329/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 45/1000,
                y: rect.midY - width * 415/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 198/1000,
                y: rect.midY + width * 250/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 267/1000,
                y: rect.midY - width * 141/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 330/1000,
                y: rect.midY + width * 114/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX + width * 309/1000,
                y: rect.midY + width * 341/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 433/1000,
                y: rect.midY + width * 363/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 342/1000,
                y: rect.midY + width * 374/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 356/1000,
                y: rect.midY + width * 490/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 504/1000,
                y: rect.midY + width * 361/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 538/1000,
                y: rect.midY + width * 509/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 219/1000,
                y: rect.midY + width * 427/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 271/1000,
                y: rect.midY + width * 478/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 76/1000,
                y: rect.midY + width * 419/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 132/1000,
                y: rect.midY + width * 499/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 8/1000,
                y: rect.midY + width * 545/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 493/1000,
                y: rect.midY - width * 16/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 141/1000,
                y: rect.midY + width * 423/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 487/1000,
                y: rect.midY + width * 344/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 22/1000,
                y: rect.midY - width * 492/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 485/1000,
                y: rect.midY - width * 266/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 310/1000,
                y: rect.midY - width * 492/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 392/1000,
                y: rect.midY - width * 142/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 208/1000,
                y: rect.midY - width * 495/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 355/1000,
                y: rect.midY - width * 296/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 308/1000,
                y: rect.midY + width * 340/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 448/1000,
                y: rect.midY + width * 49/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 406/1000,
                y: rect.midY + width * 243/1000
            )
        )
        return path
    }
}

#if DEBUG
struct QueenShape_Previews: PreviewProvider {
    static var previews: some View {
        QueenShape()
            .fill(style: .init(eoFill: true))
            .frame(width: 400, height: 400)
    }
}
#endif
