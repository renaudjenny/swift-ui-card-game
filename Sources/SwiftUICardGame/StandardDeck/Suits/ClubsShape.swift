import SwiftUI

// swiftlint:disable function_body_length
struct ClubsShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)

        path.move(to: CGPoint(x: rect.midX - width * 220/1000, y: rect.midY - width * 130/1000))
        path.addArc(
            center: CGPoint(x: rect.midX, y: rect.midY - width * 250/1000),
            radius: width * 250/1000,
            startAngle: .radians(.pi * 840/1000),
            endAngle: .radians(.pi * 160/1000),
            clockwise: false
        )
        path.addArc(
            center: CGPoint(x: rect.midX + width * 240/1000, y: rect.midY + width * 120/1000),
            radius: width * 250/1000,
            startAngle: .radians(-.pi/2),
            endAngle: .radians(.pi * 840/1000),
            clockwise: false
        )

        path.addCurve(
            to: CGPoint(x: rect.midX + width * 220/1000, y: rect.midY + width * 470/1000),
            control1: CGPoint(x: rect.midX + width * 20/1000, y: rect.midY + width * 400/1000),
            control2: CGPoint(x: rect.midX + width * 20/1000, y: rect.midY + width * 460/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 220/1000, y: rect.midY + width * 495/1000),
            control1: CGPoint(x: rect.midX + width * 250/1000, y: rect.midY + width * 475/1000),
            control2: CGPoint(x: rect.midX + width * 230/1000, y: rect.midY + width * 495/1000)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.midX - width * 200/1000, y: rect.midY + width * 495/1000),
            control: CGPoint(x: rect.midX, y: rect.midY + width * 500/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX - width * 220/1000, y: rect.midY + width * 470/1000),
            control1: CGPoint(x: rect.midX - width * 250/1000, y: rect.midY + width * 496/1000),
            control2: CGPoint(x: rect.midX - width * 245/1000, y: rect.midY + width * 470/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX - width * 18/1000, y: rect.midY + width * 250/1000),
            control1: CGPoint(x: rect.midX - width * 20/1000, y: rect.midY + width * 460/1000),
            control2: CGPoint(x: rect.midX - width * 20/1000, y: rect.midY + width * 390/1000)
        )

        path.addArc(
            center: CGPoint(x: rect.midX - width * 240/1000, y: rect.midY + width * 120/1000),
            radius: width * 250/1000,
            startAngle: .radians(.pi * 150/1000),
            endAngle: .radians(-.pi/2),
            clockwise: false
        )

        path.move(to: CGPoint(x: rect.midX + width * 363/1000, y: rect.midY + width * 280/1000))
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 330/1000, y: rect.midY - width * 45/1000),
            control1: CGPoint(x: rect.midX + width * 410/1000, y: rect.midY + width * 280/1000),
            control2: CGPoint(x: rect.midX + width * 510/1000, y: rect.midY - width * 30/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 300/1000, y: rect.midY + width * 110/1000),
            control1: CGPoint(x: rect.midX + width * 240/1000, y: rect.midY - width * 40/1000),
            control2: CGPoint(x: rect.midX + width * 230/1000, y: rect.midY + width * 40/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 363/1000, y: rect.midY + width * 280/1000),
            control1: CGPoint(x: rect.midX + width * 400/1000, y: rect.midY + width * 210/1000),
            control2: CGPoint(x: rect.midX + width * 320/1000, y: rect.midY + width * 260/1000)
        )

        path.move(to: CGPoint(x: rect.midX + width * 137/1000, y: rect.midY - width * 174/1000))
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 70/1000, y: rect.midY - width * 415/1000),
            control1: CGPoint(x: rect.midX + width * 190/1000, y: rect.midY - width * 220/1000),
            control2: CGPoint(x: rect.midX + width * 170/1000, y: rect.midY - width * 410/1000)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 6/1000, y: rect.midY - width * 347/1000),
            control: CGPoint(x: rect.midX + width * 5/1000, y: rect.midY - width * 410/1000)
        )
        path.addQuadCurve(
            to: CGPoint(x: rect.midX + width * 60/1000, y: rect.midY - width * 290/1000),
            control: CGPoint(x: rect.midX + width * 10/1000, y: rect.midY - width * 317/1000)
        )
        path.addCurve(
            to: CGPoint(x: rect.midX + width * 137/1000, y: rect.midY - width * 174/1000),
            control1: CGPoint(x: rect.midX + width * 160/1000, y: rect.midY - width * 220/1000),
            control2: CGPoint(x: rect.midX + width * 100/1000, y: rect.midY - width * 190/1000)
        )

        return path
    }
}

#if DEBUG
struct ClubsShape_Previews: PreviewProvider {
    static var previews: some View {
        ClubsShape()
            .fill(style: .init(eoFill: true))
            .frame(width: 400, height: 400)
    }
}
#endif
