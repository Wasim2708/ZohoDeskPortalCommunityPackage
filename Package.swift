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
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalUIKitPackage.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalAPIKit.git", exact: "1.0.0"),
        .package(url: "https://github.com/Wasim2708/ZohoDeskPortalConfiguration.git", exact: "1.0.0")
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ZohoDeskPortalCommunityPackage",
            dependencies: [
                .product(name: "ZohoDeskPortalUIKitPackage", package: "ZohoDeskPortalUIKitPackage"),
                .product(name: "ZohoDeskPortalAPIKit", package: "ZohoDeskPortalAPIKit"),
                .product(name: "ZohoDeskPortalConfiguration", package: "ZohoDeskPortalConfiguration")
            ]
        ),
        .binaryTarget(name: "ZohoDeskPortalCommunity", url: "https://maven.zohodl.com/ZohoDesk/ZohoDeskPortalCommunity/3.0.12/ZohoDeskPortalCommunity.zip", checksum: "9ad9f4a035b72002d27d51784b749e13c624e95c7766c0508cfe2b7d72846f21")
    ]
)
