// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "BRIAccountManagementSDK",
    platforms: [.iOS(.v14)],  // Min. iOS version
    products: [
        .library(
            name: "BRIAccountManagementSDK",
            targets: ["BRIAccountManagementSDK"]),
    ],
    targets: [
        .target(
            name: "BRIAccountManagementSDK",
            path: "Sources/BRIAccountManagementSDK"
        ),
        .testTarget(
            name: "BRIAccountManagementSDKTests",
            dependencies: ["BRIAccountManagementSDK"]),
    ]
)
