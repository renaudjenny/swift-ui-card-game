import SwiftUI

// swiftlint:disable:next type_body_length
struct QueenSilhouetteShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 195/1000,
                y: rect.midY + width * 494/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 205/1000,
                y: rect.midY + width * 439/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 93/1000,
                y: rect.midY + width * 426/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 159/1000,
                y: rect.midY + width * 279/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 148/1000,
                y: rect.midY + width * 357/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 266/1000,
                y: rect.midY + width * 354/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 197/1000,
                y: rect.midY + width * 269/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 252/1000,
                y: rect.midY + width * 295/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 270/1000,
                y: rect.midY + width * 318/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 309/1000,
                y: rect.midY + width * 316/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 279/1000,
                y: rect.midY + width * 316/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 229/1000,
                y: rect.midY - width * 227/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 195/1000,
                y: rect.midY + width * 172/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 421/1000,
                y: rect.midY - width * 77/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 294/1000,
                y: rect.midY - width * 255/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 337/1000,
                y: rect.midY - width * 400/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 209/1000,
                y: rect.midY - width * 316/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 214/1000,
                y: rect.midY - width * 356/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 182/1000,
                y: rect.midY - width * 339/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 190/1000,
                y: rect.midY - width * 408/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 133/1000,
                y: rect.midY - width * 346/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 121/1000,
                y: rect.midY - width * 376/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 97/1000,
                y: rect.midY - width * 348/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 63/1000,
                y: rect.midY - width * 492/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 18/1000,
                y: rect.midY - width * 346/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 45/1000,
                y: rect.midY - width * 379/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 78/1000,
                y: rect.midY - width * 349/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 136/1000,
                y: rect.midY - width * 443/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 156/1000,
                y: rect.midY - width * 322/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 182/1000,
                y: rect.midY - width * 344/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 191/1000,
                y: rect.midY - width * 300/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 339/1000,
                y: rect.midY - width * 338/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 191/1000,
                y: rect.midY - width * 187/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 305/1000,
                y: rect.midY - width * 13/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 268/1000,
                y: rect.midY - width * 159/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 254/1000,
                y: rect.midY - width * 25/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 243/1000,
                y: rect.midY - width * 32/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 268/1000,
                y: rect.midY - width * 7/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 279/1000,
                y: rect.midY + width * 114/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 283/1000,
                y: rect.midY + width * 7/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 290/1000,
                y: rect.midY + width * 78/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 219/1000,
                y: rect.midY + width * 45/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 258/1000,
                y: rect.midY + width * 53/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 234/1000,
                y: rect.midY + width * 177/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 185/1000,
                y: rect.midY + width * 119/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 277/1000,
                y: rect.midY + width * 157/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 234/1000,
                y: rect.midY + width * 203/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 217/1000,
                y: rect.midY + width * 184/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 227/1000,
                y: rect.midY + width * 195/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 226/1000,
                y: rect.midY + width * 217/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 243/1000,
                y: rect.midY + width * 212/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 221/1000,
                y: rect.midY + width * 236/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 241/1000,
                y: rect.midY + width * 231/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 133/1000,
                y: rect.midY + width * 268/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 188/1000,
                y: rect.midY + width * 250/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 228/1000,
                y: rect.midY + width * 306/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 88/1000,
                y: rect.midY + width * 245/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 104/1000,
                y: rect.midY + width * 256/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 126/1000,
                y: rect.midY + width * 361/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 97/1000,
                y: rect.midY + width * 311/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 132/1000,
                y: rect.midY + width * 350/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 130/1000,
                y: rect.midY + width * 359/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 154/1000,
                y: rect.midY + width * 419/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 140/1000,
                y: rect.midY + width * 409/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 147/1000,
                y: rect.midY + width * 411/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 195/1000,
                y: rect.midY + width * 494/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 141/1000,
                y: rect.midY + width * 426/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 176/1000,
                y: rect.midY + width * 470/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX - width * 190/1000,
                y: rect.midY - width * 215/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 272/1000,
                y: rect.midY - width * 297/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 191/1000,
                y: rect.midY - width * 263/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 171/1000,
                y: rect.midY - width * 307/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 147/1000,
                y: rect.midY - width * 291/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 122/1000,
                y: rect.midY - width * 363/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 88/1000,
                y: rect.midY - width * 316/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 45/1000,
                y: rect.midY - width * 355/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 21/1000,
                y: rect.midY - width * 312/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 190/1000,
                y: rect.midY - width * 214/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 127/1000,
                y: rect.midY - width * 299/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX + width * 0/1000,
                y: rect.midY - width * 315/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 7/1000,
                y: rect.midY - width * 337/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 51/1000,
                y: rect.midY - width * 434/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 85/1000,
                y: rect.midY - width * 346/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 82/1000,
                y: rect.midY - width * 309/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 1/1000,
                y: rect.midY - width * 314/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 45/1000,
                y: rect.midY - width * 339/1000
            )
        )
        path.move(
            to: CGPoint(
                x: rect.midX + width * 99/1000,
                y: rect.midY - width * 312/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 100/1000,
                y: rect.midY - width * 333/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 112/1000,
                y: rect.midY - width * 349/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 126/1000,
                y: rect.midY - width * 328/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 173/1000,
                y: rect.midY - width * 372/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 169/1000,
                y: rect.midY - width * 321/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 194/1000,
                y: rect.midY - width * 331/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 196/1000,
                y: rect.midY - width * 299/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 307/1000,
                y: rect.midY - width * 364/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 278/1000,
                y: rect.midY - width * 270/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 240/1000,
                y: rect.midY - width * 258/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 99/1000,
                y: rect.midY - width * 312/1000
            ),
            control: CGPoint(
                x: rect.midX + width * 178/1000,
                y: rect.midY - width * 308/1000
            )
        )
        return path
    }
}

#if DEBUG
struct QueenSilhouetteShape_Previews: PreviewProvider {
    static var previews: some View {
        QueenSilhouetteShape().frame(width: 400, height: 400)
    }
}
#endif
