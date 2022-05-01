import SwiftUI

struct TenShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let width = min(rect.width, rect.height)
        let rect = rect.insetBy(dx: width * 3/100, dy: width * 3/100)
        path.addPath(OneShape().path(in: rect.offsetBy(dx: width * -30/100, dy: 0)))
        path.addPath(ZeroShape().path(in: rect.offsetBy(dx: width * 20/100, dy: 0)))
        return path
    }
}

#if DEBUG
struct TenShape_Previews: PreviewProvider {
    static var previews: some View {
        TenShape().frame(width: 400, height: 400)
    }
}
#endif
