// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZohoDeskPortalCommunityPackage",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ZohoDeskPortalCommunityPackage",
            targets: ["ZohoDeskPortalCommunityPackage", "ZohoDeskPortalCommunity"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalConfiguration.git", exact: "4.0.15")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZohoDeskPortalCommunityPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        ),
        .binaryTarget(name: "ZohoDeskPortalCommunity", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCommunity/4.0.1/ZohoDeskPortalCommunity.zip", checksum: "3de3d56ff7919c21fbeb305bb1d2d2d29f391669cc649ab869cbc876e04bd390")
    ]
)
