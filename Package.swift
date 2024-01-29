// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Apollo-Graphql",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "Apollo-Graphql",
            targets: ["Apollo-Graphql"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apollographql/apollo-ios.git",
            .upToNextMajor(from: "1.0.0")
        ),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "Apollo-Graphql",
            dependencies: [
                .product(name: "Apollo", package: "apollo-ios"),
            ]
        ),
        .testTarget(
            name: "Apollo-GraphqlTests",
            dependencies: ["Apollo-Graphql"]),
    ]
)
