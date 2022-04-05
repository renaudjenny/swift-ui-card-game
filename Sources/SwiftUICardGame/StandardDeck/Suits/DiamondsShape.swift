import SwiftUI

struct DiamondsShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)

        path.move(to: CGPoint(x: rect.midX, y: rect.midY - width/2))
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX + width * 345/1000,
                y: rect.midY
            ),
            control: CGPoint(
                x: rect.midX + width * 160/1000,
                y: rect.midY - width * 160/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX,
                y: rect.midY + width/2
            ),
            control: CGPoint(
                x: rect.midX + width * 30/1000,
                y: rect.midY + width * 320/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX - width * 345/1000,
                y: rect.midY
            ),
            control: CGPoint(
                x: rect.midX - width * 50/1000,
                y: rect.midY + width * 280/1000
            )
        )
        path.addQuadCurve(
            to: CGPoint(
                x: rect.midX,
                y: rect.midY - width/2
            ),
            control: CGPoint(
                x: rect.midX - width * 150/1000,
                y: rect.midY - width * 170/1000
            )
        )

        path.move(to: CGPoint(x: rect.midX + width * 30/1000, y: rect.midY - width * 330/1000))
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 240/1000,
                y: rect.midY - width * 50/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 25/1000,
                y: rect.midY - width * 335/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 35/1000,
                y: rect.midY - width * 320/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 65/1000,
                y: rect.midY - width * 55/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 260/1000,
                y: rect.midY - width * 20/1000
            ),
            control2: CGPoint(
                x: rect.midX + width * 130/1000,
                y: rect.midY - width * 20/1000
            )
        )
        path.addCurve(
            to: CGPoint(
                x: rect.midX + width * 30/1000,
                y: rect.midY - width * 330/1000
            ),
            control1: CGPoint(
                x: rect.midX + width * 30/1000,
                y: rect.midY - width * 100/1000
            ),
            control2: CGPoint(
                x: rect.midX - width * 10/1000,
                y: rect.midY - width * 360/1000
            )
        )

        return path
    }
}

#if DEBUG
struct DiamondsShape_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            DiamondsShape().fill(style: .init(eoFill: true))
        }.frame(width: 400, height: 400)
    }
}
#endif
