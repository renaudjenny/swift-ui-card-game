// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftUICardGame",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(
            name: "SwiftUICardGame",
            targets: ["SwiftUICardGame"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftUICardGame",
            dependencies: [],
            resources: [.process("StandardDeck/Resources")]
        ),
        .testTarget(
            name: "SwiftUICardGameTests",
            dependencies: ["SwiftUICardGame"]),
    ]
)
