// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "MeuLog",
    products: [
        .library(
            name: "MeuLog",
            targets: ["MeuLog"]
        ),
    ],
    dependencies: [ ],
    targets: [
        .binaryTarget(
            name: "MeuLog",
            path: "Sources/MeuLog.xcframework"
        )
    ]
)
