// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Features",
    products: [
        .library(
            name: "Features",
            targets: ["Features"]),
    ],
    dependencies: [
        .package(path: "FeatureA"),
        .package(path: "FeatureB"),
        .package(path: "FeatureC")
    ],
    targets: [
        .target(
            name: "Features",
            dependencies: ["FeatureA", "FeatureB", "FeatureC"]),
        .testTarget(
            name: "FeaturesTests",
            dependencies: ["Features"]),
    ]
)

