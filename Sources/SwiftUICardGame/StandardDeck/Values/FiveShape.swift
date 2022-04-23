import SwiftUI

struct FiveShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 117/1000,
                y: rect.midY - width * 355/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 112/1000,
                y: rect.midY - width * 180/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 107/1000,
                y: rect.midY - width * 263/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 321/1000,
                y: rect.midY + width * 148/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 237/1000,
                y: rect.midY - width * 195/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 315/1000,
                y: rect.midY - width * 20/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 4/1000,
                y: rect.midY + width * 494/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 328/1000,
                y: rect.midY + width * 308/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 220/1000,
                y: rect.midY + width * 492/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 310/1000,
                y: rect.midY + width * 321/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 221/1000,
                y: rect.midY + width * 491/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 180/1000,
                y: rect.midY + width * 256/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 352/1000,
                y: rect.midY + width * 239/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 250/1000,
                y: rect.midY + width * 150/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 2/1000,
                y: rect.midY + width * 347/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 116/1000,
                y: rect.midY + width * 345/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 156/1000,
                y: rect.midY - width * 46/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 255/1000,
                y: rect.midY + width * 347/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 268/1000,
                y: rect.midY - width * 129/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 248/1000,
                y: rect.midY - width * 152/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 271/1000,
                y: rect.midY - width * 18/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 271/1000,
                y: rect.midY - width * 98/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 249/1000,
                y: rect.midY - width * 375/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 231/1000,
                y: rect.midY - width * 235/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 175/1000,
                y: rect.midY - width * 485/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 295/1000,
                y: rect.midY - width * 377/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 348/1000,
                y: rect.midY - width * 544/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 248/1000,
                y: rect.midY - width * 500/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 40/1000,
                y: rect.midY - width * 453/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 248/1000,
                y: rect.midY - width * 359/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 331/1000,
                y: rect.midY - width * 519/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 347/1000,
                y: rect.midY - width * 359/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 116/1000,
                y: rect.midY - width * 356/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 50/1000,
                y: rect.midY - width * 343/1000
            )
        )
        return path
    }
}

#if DEBUG
struct FiveShape_Previews: PreviewProvider {
    static var previews: some View {
        FiveShape().frame(width: 400, height: 400)
    }
}
#endif
