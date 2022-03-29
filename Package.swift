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
    dependencies: [
        .package(url: "https://github.com/apple/swift-algorithms", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "SwiftUICardGame",
            dependencies: [
                .productItem(name: "Algorithms", package: "swift-algorithms", condition: nil),
            ]),
        .testTarget(
            name: "SwiftUICardGameTests",
            dependencies: ["SwiftUICardGame"]),
    ]
)
