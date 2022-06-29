import SwiftUI

public enum Rank: String, CaseIterable {
    case ace
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    case ten
    case jack
    case queen
    case king

    @ViewBuilder
    var view: some View {
        switch self {
        case .ace: AceShape().fill(style: .init(eoFill: true))
        case .two: TwoShape()
        case .three: ThreeShape()
        case .four: FourShape()
        case .five: FiveShape()
        case .six: SixShape()
        case .seven: SevenShape()
        case .eight: EightShape().fill(style: .init(eoFill: true))
        case .nine: NineShape()
        case .ten: TenShape()
        case .jack: JackShape()
        case .queen: QueenShape().fill(style: .init(eoFill: true))
        case .king: KingShape()
        }
    }

    var value: Int {
        guard self != .ace else { return 14 }
        return (Rank.allCases.firstIndex(of: self) ?? 0) + 1
    }
}
