import SwiftUI
struct EightShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 201/1000,
                y: rect.midY - width * 117/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 310/1000,
                y: rect.midY + width * 254/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 373/1000,
                y: rect.midY + width * 45/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 8/1000,
                y: rect.midY + width * 498/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 234/1000,
                y: rect.midY + width * 484/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 318/1000,
                y: rect.midY + width * 187/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 300/1000,
                y: rect.midY + width * 478/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 182/1000,
                y: rect.midY - width * 86/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 311/1000,
                y: rect.midY - width * 19/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 16/1000,
                y: rect.midY - width * 500/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 295/1000,
                y: rect.midY - width * 174/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 259/1000,
                y: rect.midY - width * 497/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 202/1000,
                y: rect.midY - width * 117/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 204/1000,
                y: rect.midY - width * 503/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 264/1000,
                y: rect.midY - width * 241/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX - width * 83/1000,
                y: rect.midY - width * 29/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 87/1000,
                y: rect.midY - width * 33/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 6/1000,
                y: rect.midY - width * 12/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 4/1000,
                y: rect.midY + width * 367/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 281/1000,
                y: rect.midY + width * 33/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 204/1000,
                y: rect.midY + width * 368/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 208/1000,
                y: rect.midY + width * 170/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 163/1000,
                y: rect.midY + width * 365/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 205/1000,
                y: rect.midY + width * 254/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 83/1000,
                y: rect.midY - width * 30/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 207/1000,
                y: rect.midY + width * 33/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX - width * 2/1000,
                y: rect.midY - width * 141/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 131/1000,
                y: rect.midY - width * 243/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 81/1000,
                y: rect.midY - width * 140/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 129/1000,
                y: rect.midY - width * 170/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 9/1000,
                y: rect.midY - width * 385/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 131/1000,
                y: rect.midY - width * 312/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 92/1000,
                y: rect.midY - width * 382/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 119/1000,
                y: rect.midY - width * 239/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 85/1000,
                y: rect.midY - width * 386/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 119/1000,
                y: rect.midY - width * 294/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 2/1000,
                y: rect.midY - width * 140/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 118/1000,
                y: rect.midY - width * 185/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 95/1000,
                y: rect.midY - width * 146/1000
            )
        )
        return path
    }
}

#if DEBUG
struct EightShape_Previews: PreviewProvider {
    static var previews: some View {
        EightShape()
            .fill(style: .init(eoFill: true))
            .frame(width: 400, height: 400)
    }
}
#endif
