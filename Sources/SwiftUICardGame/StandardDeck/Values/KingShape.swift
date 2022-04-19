import SwiftUI

struct KingShape: Shape {

    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)

        path.move(
            to: CGPoint(
                x: rect.midX - width * 275/1000,
                y: rect.midY - width * 354/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 273/1000,
                y: rect.midY - width * 82/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 69/1000,
                y: rect.midY - width * 423/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 115/1000,
                y: rect.midY - width * 191/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 191/1000,
                y: rect.midY - width * 361/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 142/1000,
                y: rect.midY - width * 542/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 261/1000,
                y: rect.midY - width * 477/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 11/1000,
                y: rect.midY - width * 97/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 119/1000,
                y: rect.midY - width * 217/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 426/1000,
                y: rect.midY + width * 363/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 117/1000,
                y: rect.midY - width * 21/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 321/1000,
                y: rect.midY + width * 310/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 238/1000,
                y: rect.midY + width * 458/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 524/1000,
                y: rect.midY + width * 414/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 387/1000,
                y: rect.midY + width * 553/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 123/1000,
                y: rect.midY + width * 0/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 102/1000,
                y: rect.midY + width * 367/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 6/1000,
                y: rect.midY + width * 151/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 269/1000,
                y: rect.midY + width * 100/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 187/1000,
                y: rect.midY + width * 54/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 266/1000,
                y: rect.midY + width * 390/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 433/1000,
                y: rect.midY + width * 396/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 273/1000,
                y: rect.midY + width * 533/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 438/1000,
                y: rect.midY + width * 520/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 427/1000,
                y: rect.midY - width * 351/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 276/1000,
                y: rect.midY - width * 353/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 434/1000,
                y: rect.midY - width * 548/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 278/1000,
                y: rect.midY - width * 550/1000
            )
        )


        return path
    }
}

#if DEBUG
struct KingShape_Previews: PreviewProvider {
    static var previews: some View {
        KingShape().frame(width: 400, height: 400)
    }
}
#endif
