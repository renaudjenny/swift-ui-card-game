import SwiftUI

@resultBuilder
public enum ShapeBuilder {
    public static func buildBlock<T: Shape>(_ component: T) -> some Shape {
        component
    }

    public static func buildEither<First: Shape, Second: Shape>(first component: First) -> EitherShape<First, Second> {
        .first(component)
    }

    public static func buildEither<First: Shape, Second: Shape>(second component: Second) -> EitherShape<First, Second> {
        .second(component)
    }
}

public enum EitherShape<First: Shape, Second: Shape>: Shape {
    case first(First)
    case second(Second)

    public func path(in rect: CGRect) -> Path {
        switch self {
        case let .first(shape):
            return shape.path(in: rect)
        case let .second(shape):
            return shape.path(in: rect)
        }
    }
}
