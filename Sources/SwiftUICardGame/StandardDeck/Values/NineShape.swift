import SwiftUI
struct NineShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX + width * 82/1000,
                y: rect.midY - width * 374/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 128/1000,
                y: rect.midY - width * 178/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 116/1000,
                y: rect.midY - width * 179/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 35/1000,
                y: rect.midY - width * 34/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 110/1000,
                y: rect.midY - width * 44/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 83/1000,
                y: rect.midY - width * 373/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 117/1000,
                y: rect.midY - width * 285/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 86/1000,
                y: rect.midY - width * 375/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX + width * 168/1000,
                y: rect.midY - width * 22/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 206/1000,
                y: rect.midY + width * 266/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 295/1000,
                y: rect.midY + width * 337/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 71/1000,
                y: rect.midY + width * 464/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 296/1000,
                y: rect.midY + width * 364/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 272/1000,
                y: rect.midY + width * 179/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 372/1000,
                y: rect.midY + width * 281/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 33/1000,
                y: rect.midY + width * 497/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 220/1000,
                y: rect.midY + width * 451/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 166/1000,
                y: rect.midY + width * 495/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 327/1000,
                y: rect.midY + width * 76/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 169/1000,
                y: rect.midY + width * 491/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 354/1000,
                y: rect.midY + width * 339/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 203/1000,
                y: rect.midY - width * 434/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 30/1000,
                y: rect.midY - width * 487/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 189/1000,
                y: rect.midY - width * 490/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 112/1000,
                y: rect.midY - width * 515/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 244/1000,
                y: rect.midY - width * 133/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 282/1000,
                y: rect.midY - width * 419/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 8/1000,
                y: rect.midY + width * 57/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 208/1000,
                y: rect.midY + width * 68/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 168/1000,
                y: rect.midY - width * 23/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 67/1000,
                y: rect.midY + width * 51/1000
            )
        )
        return path
    }
}

#if DEBUG
struct NineShape_Previews: PreviewProvider {
    static var previews: some View {
        NineShape().frame(width: 400, height: 400)
    }
}
#endif
