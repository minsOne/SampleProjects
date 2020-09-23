// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Feature",
    products: [
        .library(
            name: "Feature",
            targets: ["Feature"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "Feature",
            dependencies: [],
            resources: [.process("Resources")]),
        .testTarget(
            name: "FeatureTests",
            dependencies: ["Feature"]),
    ]
)
