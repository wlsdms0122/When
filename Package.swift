// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "When",
    products: [
        .library(
            name: "When",
            targets: ["When"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "When",
            dependencies: []
        ),
        .testTarget(
            name: "WhenTests",
            dependencies: ["When"]
        )
    ]
)
