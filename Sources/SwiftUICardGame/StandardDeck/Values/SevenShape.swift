import SwiftUI
struct SevenShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 178/1000,
                y: rect.midY - width * 337/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 321/1000,
                y: rect.midY - width * 371/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 172/1000,
                y: rect.midY - width * 303/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 259/1000,
                y: rect.midY - width * 479/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 387/1000,
                y: rect.midY - width * 409/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 342/1000,
                y: rect.midY - width * 505/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 195/1000,
                y: rect.midY - width * 477/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 161/1000,
                y: rect.midY - width * 449/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 74/1000,
                y: rect.midY - width * 452/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 335/1000,
                y: rect.midY - width * 377/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 331/1000,
                y: rect.midY - width * 532/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 358/1000,
                y: rect.midY - width * 459/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 295/1000,
                y: rect.midY - width * 135/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 274/1000,
                y: rect.midY - width * 7/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 368/1000,
                y: rect.midY - width * 132/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 359/1000,
                y: rect.midY - width * 1/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 199/1000,
                y: rect.midY + width * 442/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 53/1000,
                y: rect.midY + width * 420/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 179/1000,
                y: rect.midY + width * 529/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 35/1000,
                y: rect.midY + width * 507/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 126/1000,
                y: rect.midY - width * 10/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 28/1000,
                y: rect.midY - width * 8/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 31/1000,
                y: rect.midY - width * 149/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 112/1000,
                y: rect.midY - width * 11/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 117/1000,
                y: rect.midY - width * 147/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 146/1000,
                y: rect.midY - width * 146/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 178/1000,
                y: rect.midY - width * 336/1000
            )
        )
        return path
    }
}

#if DEBUG
struct SevenPath_Previews: PreviewProvider {
    static var previews: some View {
        SevenShape().frame(width: 400, height: 400)
    }
}
#endif
