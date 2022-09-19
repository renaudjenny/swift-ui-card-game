import SwiftUI

struct KingSilhouetteShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 245/1000,
                y: rect.midY - width * 200/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 289/1000,
                y: rect.midY - width * 398/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 274/1000,
                y: rect.midY - width * 401/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 337/1000,
                y: rect.midY - width * 431/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 259/1000,
                y: rect.midY - width * 446/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 157/1000,
                y: rect.midY - width * 421/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 237/1000,
                y: rect.midY - width * 207/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 101/1000,
                y: rect.midY - width * 256/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 145/1000,
                y: rect.midY - width * 425/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 199/1000,
                y: rect.midY - width * 446/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 128/1000,
                y: rect.midY - width * 472/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 62/1000,
                y: rect.midY - width * 296/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 124/1000,
                y: rect.midY - width * 267/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 89/1000,
                y: rect.midY - width * 285/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 34/1000,
                y: rect.midY - width * 424/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 26/1000,
                y: rect.midY - width * 316/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 25/1000,
                y: rect.midY - width * 327/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 25/1000,
                y: rect.midY - width * 423/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 74/1000,
                y: rect.midY - width * 466/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 14/1000,
                y: rect.midY - width * 474/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 25/1000,
                y: rect.midY - width * 306/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 24/1000,
                y: rect.midY - width * 393/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 32/1000,
                y: rect.midY - width * 294/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 84/1000,
                y: rect.midY - width * 432/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 85/1000,
                y: rect.midY - width * 316/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 87/1000,
                y: rect.midY - width * 384/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 98/1000,
                y: rect.midY - width * 433/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 44/1000,
                y: rect.midY - width * 486/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 137/1000,
                y: rect.midY - width * 472/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 187/1000,
                y: rect.midY - width * 437/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 81/1000,
                y: rect.midY - width * 264/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 141/1000,
                y: rect.midY - width * 264/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 202/1000,
                y: rect.midY - width * 433/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 154/1000,
                y: rect.midY - width * 485/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 257/1000,
                y: rect.midY - width * 465/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 312/1000,
                y: rect.midY - width * 418/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 146/1000,
                y: rect.midY - width * 208/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 227/1000,
                y: rect.midY - width * 268/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 326/1000,
                y: rect.midY - width * 406/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 316/1000,
                y: rect.midY - width * 469/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 370/1000,
                y: rect.midY - width * 409/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 202/1000,
                y: rect.midY - width * 190/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 191/1000,
                y: rect.midY + width * 345/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 317/1000,
                y: rect.midY + width * 45/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 82/1000,
                y: rect.midY + width * 182/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 177/1000,
                y: rect.midY + width * 444/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 28/1000,
                y: rect.midY + width * 305/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 221/1000,
                y: rect.midY + width * 281/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 181/1000,
                y: rect.midY + width * 381/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 97/1000,
                y: rect.midY + width * 220/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 279/1000,
                y: rect.midY + width * 260/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 285/1000,
                y: rect.midY + width * 315/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 303/1000,
                y: rect.midY + width * 185/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 273/1000,
                y: rect.midY + width * 217/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 340/1000,
                y: rect.midY + width * 196/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 298/1000,
                y: rect.midY + width * 180/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 295/1000,
                y: rect.midY + width * 183/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 304/1000,
                y: rect.midY + width * 164/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 313/1000,
                y: rect.midY + width * 172/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 286/1000,
                y: rect.midY + width * 133/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 344/1000,
                y: rect.midY + width * 80/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 260/1000,
                y: rect.midY + width * 73/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 376/1000,
                y: rect.midY + width * 163/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 284/1000,
                y: rect.midY - width * 61/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 321/1000,
                y: rect.midY + width * 24/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 283/1000,
                y: rect.midY - width * 36/1000
            )
        )
        return path
    }
}

#if DEBUG
struct KingSilhouetteShape_Previews: PreviewProvider {
    static var previews: some View {
        KingSilhouetteShape().frame(width: 400, height: 400)
    }
}
#endif

