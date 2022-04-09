import SwiftUI

struct SpadesShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)

        path.move(to: CGPoint(x: rect.midX, y: rect.midY - width * 470/1000))
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 250/1000, y: rect.midY - width * 214/1000),
            control1: CGPoint(x: rect.midX + width * 50/1000, y: rect.midY - width * 340/1000),
            control2: CGPoint(x: rect.midX + width * 160/1000, y: rect.midY - width * 290/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width/2, y: rect.midY + width * 110/1000),
            control1: CGPoint(x: rect.midX + width * 450/1000, y: rect.midY - width * 70/1000),
            control2: CGPoint(x: rect.midX + width * 510/1000, y: rect.midY + width * 50/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 20/1000, y: rect.midY + width * 150/1000),
            control1: CGPoint(x: rect.midX + width * 520/1000, y: rect.midY + width * 290/1000),
            control2: CGPoint(x: rect.midX + width * 120/1000, y: rect.midY + width * 480/1000)
        )

        path.addCurve(
            to: CGPoint(x: rect.midX + width * 220/1000, y: rect.midY + width * 440/1000),
            control1: CGPoint(x: rect.midX + width * 20/1000, y: rect.midY + width * 370/1000),
            control2: CGPoint(x: rect.midX + width * 20/1000, y: rect.midY + width * 440/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 200/1000, y: rect.midY + width * 464/1000),
            control1: CGPoint(x: rect.midX + width * 250/1000, y: rect.midY + width * 440/1000),
            control2: CGPoint(x: rect.midX + width * 220/1000, y: rect.midY + width * 466/1000)
        )
        path.addLine(to: CGPoint(x: rect.midX - width * 200/1000, y: rect.midY + width * 464/1000))
        path.addCurve(
            to: CGPoint(x: rect.midX - width * 220/1000, y: rect.midY + width * 440/1000),
            control1: CGPoint(x: rect.midX - width * 230/1000, y: rect.midY + width * 466/1000),
            control2: CGPoint(x: rect.midX - width * 245/1000, y: rect.midY + width * 440/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX - width * 18/1000, y: rect.midY + width * 150/1000),
            control1: CGPoint(x: rect.midX - width * 20/1000, y: rect.midY + width * 440/1000),
            control2: CGPoint(x: rect.midX - width * 20/1000, y: rect.midY + width * 370/1000)
        )

        path.addCurve(
            to: CGPoint(x: rect.midX - width/2, y: rect.midY + width * 110/1000),
            control1: CGPoint(x: rect.midX - width * 120/1000, y: rect.midY + width * 480/1000),
            control2: CGPoint(x: rect.midX - width * 520/1000, y: rect.midY + width * 290/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX - width * 250/1000, y: rect.midY - width * 214/1000),
            control1: CGPoint(x: rect.midX - width * 510/1000, y: rect.midY + width * 50/1000),
            control2: CGPoint(x: rect.midX - width * 450/1000, y: rect.midY - width * 70/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX, y: rect.midY - width * 470/1000),
            control1: CGPoint(x: rect.midX - width * 160/1000, y: rect.midY - width * 290/1000),
            control2: CGPoint(x: rect.midX - width * 50/1000, y: rect.midY - width * 340/1000)
        )

        path.move(to: CGPoint(x: rect.midX + width * 310/1000, y: rect.midY - width * 70/1000))
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 445/1000, y: rect.midY + width * 90/1000),
            control: CGPoint(x: rect.midX + width * 430/1000, y: rect.midY - width * 20/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 390/1000, y: rect.midY + width * 225/1000),
            control1: CGPoint(x: rect.midX + width * 455/1000, y: rect.midY + width * 235/1000),
            control2: CGPoint(x: rect.midX + width * 370/1000, y: rect.midY + width * 225/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 300/1000, y: rect.midY + width * 140/1000),
            control1: CGPoint(x: rect.midX + width * 300/1000, y: rect.midY + width * 250/1000),
            control2: CGPoint(x: rect.midX + width * 300/1000, y: rect.midY + width * 140/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 310/1000, y: rect.midY - width * 70/1000),
            control1: CGPoint(x: rect.midX + width * 300/1000, y: rect.midY + width * 10/1000),
            control2: CGPoint(x: rect.midX + width * 390/1000, y: rect.midY + width * 30/1000)
        )

        return path
    }
}

#if DEBUG
struct SpadesShape_Previews: PreviewProvider {
    static var previews: some View {
        SpadesShape()
            .fill(style: .init(eoFill: true))
            .frame(width: 400, height: 400)
    }
}
#endif
