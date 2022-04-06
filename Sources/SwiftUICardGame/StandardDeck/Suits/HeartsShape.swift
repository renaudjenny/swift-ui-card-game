import SwiftUI

struct HeartsShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)

        path.move(to: CGPoint(x: rect.midX, y: rect.midY + width * 370/1000))
        path.addCurve(
            to: CGPoint(x: rect.midX + width/2, y: rect.midY - width * 150/1000),
            control1: CGPoint(x: rect.midX + width * 260/1000, y: rect.midY + width * 70/1000),
            control2: CGPoint(x: rect.midX + width * 490/1000, y: rect.midY + width * 120/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX, y: rect.midY - width * 140/1000),
            control1: CGPoint(x: rect.midX + width * 480/1000, y: rect.midY - width * 440/1000),
            control2: CGPoint(x: rect.midX + width * 90/1000, y: rect.midY - width * 460/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX - width/2, y: rect.midY - width * 140/1000),
            control1: CGPoint(x: rect.midX - width * 90/1000, y: rect.midY - width * 470/1000),
            control2: CGPoint(x: rect.midX - width * 480/1000, y: rect.midY - width * 420/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX, y: rect.midY + width * 370/1000),
            control1: CGPoint(x: rect.midX - width * 490/1000, y: rect.midY + width * 100/1000),
            control2: CGPoint(x: rect.midX - width * 260/1000, y: rect.midY + width * 120/1000)
        )

        path.move(to: CGPoint(x: rect.midX + width * 310/1000, y: rect.midY + width * 10/1000))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 385/1000, y: rect.midY - width * 30/1000),
            control: CGPoint(x: rect.midX + width * 350/1000, y: rect.midY - width * 0/1000)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 446/1000, y: rect.midY - width * 150/1000),
            control: CGPoint(x: rect.midX + width * 445/1000, y: rect.midY - width * 80/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 330/1000, y: rect.midY - width * 270/1000),
            control1: CGPoint(x: rect.midX + width * 450/1000, y: rect.midY - width * 240/1000),
            control2: CGPoint(x: rect.midX + width * 390/1000, y: rect.midY - width * 290/1000)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 285/1000, y: rect.midY - width * 200/1000),
            control: CGPoint(x: rect.midX + width * 280/1000, y: rect.midY - width * 250/1000)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 320/1000, y: rect.midY - width * 100/1000),
            control: CGPoint(x: rect.midX + width * 300/1000, y: rect.midY - width * 135/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 310/1000, y: rect.midY + width * 10/1000),
            control1: CGPoint(x: rect.midX + width * 360/1000, y: rect.midY - width * 20/1000),
            control2: CGPoint(x: rect.midX + width * 310/1000, y: rect.midY + width * 10/1000)
        )

        return path
    }
}

#if DEBUG
struct HeartsShape_Previews: PreviewProvider {
    static var previews: some View {
        HeartsShape().fill(style: .init(eoFill: true))
            .frame(width: 400, height: 400)
    }
}
#endif
