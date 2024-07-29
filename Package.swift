// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "QDS",
    platforms: [.iOS(.v15), .macOS(.v12)],
    products: [
        .library(
            name: "QDS",
            targets: ["QDS"]),
    ],
    targets: [
        .target(
            name: "QDS",
            dependencies: [],
            resources: [
                .process("Resources")
            ]
        )
    ]
)
