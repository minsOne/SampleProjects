// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SamplePackage",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "SamplePackage",
            targets: ["SamplePackage"]),
        .library(
            name: "SampleFramework",
            targets: ["SampleFramework"]),
        .library(
            name: "PSPDFKit",
            targets: ["PSPDFKit", "PSPDFKitUI"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "SamplePackage",
            dependencies: ["SampleFramework"]),
        .binaryTarget(name: "SampleFramework",
                      path: "BinaryFramework/sample.xcframework"),
        .testTarget(
            name: "SamplePackageTests",
            dependencies: ["SamplePackage"]),
        .binaryTarget(
            name: "PSPDFKit",
            url: "https://customers.pspdfkit.com/pspdfkit/xcframework/10.0.0.zip",
            checksum: "bfb412ada4d291e22542c2d06b3e9f811616fb043fbd12660b0108541eb33a3c"),
        .binaryTarget(
            name: "PSPDFKitUI",
            url: "https://customers.pspdfkit.com/pspdfkitui/xcframework/10.0.0.zip",
            checksum: "4903f4b7e753ac4760a827a72d7ed836a29e1700218ddfaa4e1f70814bd6f085"),
    ]
)
