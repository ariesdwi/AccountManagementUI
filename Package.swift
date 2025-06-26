// swift-tools-version: 6.1
// The swift-tools-version declares the minimum version of Swift required to build this package.


import PackageDescription

let package = Package(
    name: "AccountManagementUI",
    platforms: [.iOS(.v14)],  // Min. iOS version
    products: [
        .library(
            name: "AccountManagementUI",
            targets: ["AccountManagementUI"]),
    ],
    targets: [
        .target(
            name: "AccountManagementUI",
            path: "Sources/AccountManagementUI"
        ),
        .testTarget(
            name: "AccountManagementUITests",
            dependencies: ["AccountManagementUI"]),
    ]
)
