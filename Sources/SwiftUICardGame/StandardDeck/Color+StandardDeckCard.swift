import SwiftUI

public extension Color {
    static func suit(_ suit: Suit, colorScheme: ColorScheme) -> Self {
        switch (suit, colorScheme) {
        case (.clubs, .light), (.spades, .light):
            return Color(red: 11/255, green: 16/255, blue: 45/255)
        case (.clubs, .dark), (.spades, .dark):
            return Color(red: 109/255, green: 143/255, blue: 201/255)
        case (.diamonds, .light), (.hearts, .light):
            return Color(red: 183/255, green: 27/255, blue: 27/255)
        case (.diamonds, .dark), (.hearts, .dark):
            return Color(red: 174/255, green: 119/255, blue: 179/255)
        case (_, _):
            return .black
        }
    }
}
