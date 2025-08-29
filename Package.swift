// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SealJetpack",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SealJetpack",
            targets: ["SealJetpack"]
        )
    ],
    dependencies: [
        .package(
            url: "https://github.com/ddddxxx/SwiftyOpenCC",
            exact: "2.0.0-beta"
        )
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SealJetpack",
            dependencies: [
                .product(name: "OpenCC", package: "SwiftyOpenCC")
            ]
        ),
        .testTarget(
            name: "SealJetpackTests",
            dependencies: ["SealJetpack"]
        ),
    ]
)
