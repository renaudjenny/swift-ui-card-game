import SwiftUI

// swiftlint:disable function_body_length
struct JackShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 73/1000,
                y: rect.midY + width * 178/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 20/1000,
                y: rect.midY + width * 381/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 143/1000,
                y: rect.midY + width * 185/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 131/1000,
                y: rect.midY + width * 383/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 188/1000,
                y: rect.midY + width * 169/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 85/1000,
                y: rect.midY + width * 378/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 194/1000,
                y: rect.midY + width * 338/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 174/1000,
                y: rect.midY - width * 320/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 185/1000,
                y: rect.midY + width * 86/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 160/1000,
                y: rect.midY - width * 86/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 200/1000,
                y: rect.midY - width * 348/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 60/1000,
                y: rect.midY - width * 265/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 58/1000,
                y: rect.midY - width * 334/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 338/1000,
                y: rect.midY - width * 382/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 236/1000,
                y: rect.midY - width * 260/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 353/1000,
                y: rect.midY - width * 286/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 210/1000,
                y: rect.midY - width * 493/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 327/1000,
                y: rect.midY - width * 445/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 282/1000,
                y: rect.midY - width * 495/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 23/1000,
                y: rect.midY - width * 440/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 111/1000,
                y: rect.midY - width * 489/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 64/1000,
                y: rect.midY - width * 451/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 239/1000,
                y: rect.midY - width * 494/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 108/1000,
                y: rect.midY - width * 443/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 166/1000,
                y: rect.midY - width * 486/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 331/1000,
                y: rect.midY - width * 357/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 271/1000,
                y: rect.midY - width * 493/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 372/1000,
                y: rect.midY - width * 483/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 303/1000,
                y: rect.midY + width * 348/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 279/1000,
                y: rect.midY - width * 174/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 397/1000,
                y: rect.midY + width * 146/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 33/1000,
                y: rect.midY + width * 500/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 256/1000,
                y: rect.midY + width * 422/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 197/1000,
                y: rect.midY + width * 488/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 232/1000,
                y: rect.midY + width * 261/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 79/1000,
                y: rect.midY + width * 501/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 238/1000,
                y: rect.midY + width * 395/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 71/1000,
                y: rect.midY + width * 38/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 221/1000,
                y: rect.midY + width * 126/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 163/1000,
                y: rect.midY + width * 43/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 7/1000,
                y: rect.midY + width * 188/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 104/1000,
                y: rect.midY + width * 47/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 78/1000,
                y: rect.midY + width * 201/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 74/1000,
                y: rect.midY + width * 178/1000
            )
        )
        return path
    }
}

#if DEBUG
struct JackShape_Previews: PreviewProvider {
    static var previews: some View {
        JackShape().frame(width: 400, height: 400)
    }
}
#endif
