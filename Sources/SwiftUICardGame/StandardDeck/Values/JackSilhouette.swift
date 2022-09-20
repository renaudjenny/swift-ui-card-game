import SwiftUI

struct JackSilhouetteShape: Shape {
    // swiftlint:disable:next function_body_length
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        path.move(
            to: CGPoint(
                x: rect.midX - width * 384/1000,
                y: rect.midY - width * 472/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 383/1000,
                y: rect.midY - width * 457/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX + width * 262/1000,
                y: rect.midY - width * 282/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 268/1000,
                y: rect.midY - width * 167/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 344/1000,
                y: rect.midY - width * 284/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 312/1000,
                y: rect.midY - width * 168/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 337/1000,
                y: rect.midY + width * 315/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 454/1000,
                y: rect.midY + width * 205/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 422/1000,
                y: rect.midY + width * 403/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 257/1000,
                y: rect.midY + width * 335/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 330/1000,
                y: rect.midY + width * 375/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 284/1000,
                y: rect.midY + width * 367/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 232/1000,
                y: rect.midY + width * 480/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 192/1000,
                y: rect.midY + width * 254/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 112/1000,
                y: rect.midY + width * 322/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 211/1000,
                y: rect.midY + width * 476/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 40/1000,
                y: rect.midY + width * 357/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 189/1000,
                y: rect.midY + width * 382/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 193/1000,
                y: rect.midY + width * 424/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 211/1000,
                y: rect.midY + width * 391/1000
            ),
            control: CGPoint(
                x: rect.midX - width * 201/1000,
                y: rect.midY + width * 394/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 225/1000,
                y: rect.midY + width * 434/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 228/1000,
                y: rect.midY + width * 418/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 231/1000,
                y: rect.midY + width * 440/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 233/1000,
                y: rect.midY + width * 418/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 236/1000,
                y: rect.midY + width * 440/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 238/1000,
                y: rect.midY + width * 418/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 242/1000,
                y: rect.midY + width * 439/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 246/1000,
                y: rect.midY + width * 419/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 248/1000,
                y: rect.midY + width * 440/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 251/1000,
                y: rect.midY + width * 419/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 254/1000,
                y: rect.midY + width * 440/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 257/1000,
                y: rect.midY + width * 419/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 260/1000,
                y: rect.midY + width * 439/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 263/1000,
                y: rect.midY + width * 419/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 266/1000,
                y: rect.midY + width * 440/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 269/1000,
                y: rect.midY + width * 418/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 272/1000,
                y: rect.midY + width * 440/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 275/1000,
                y: rect.midY + width * 417/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 277/1000,
                y: rect.midY + width * 439/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 280/1000,
                y: rect.midY + width * 417/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 282/1000,
                y: rect.midY + width * 438/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 285/1000,
                y: rect.midY + width * 418/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 289/1000,
                y: rect.midY + width * 438/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 295/1000,
                y: rect.midY + width * 248/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 309/1000,
                y: rect.midY + width * 373/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 341/1000,
                y: rect.midY + width * 270/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 299/1000,
                y: rect.midY + width * 131/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 344/1000,
                y: rect.midY + width * 247/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 333/1000,
                y: rect.midY + width * 173/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 291/1000,
                y: rect.midY - width * 167/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 426/1000,
                y: rect.midY + width * 96/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 244/1000,
                y: rect.midY + width * 1/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX - width * 287/1000,
                y: rect.midY - width * 276/1000
            ),
            control1: CGPoint(
                x: rect.midX - width * 341/1000,
                y: rect.midY - width * 180/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 344/1000,
                y: rect.midY - width * 250/1000
            )
        )
        path.addLine(
            to: CGPoint(
                x: rect.midX - width * 385/1000,
                y: rect.midY - width * 472/1000
            )
        )
        return path
    }
}

#if DEBUG
struct JackSilhouetteShape_Previews: PreviewProvider {
    static var previews: some View {
        JackSilhouetteShape().frame(width: 400, height: 400)
    }
}
#endif
