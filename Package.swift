// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "1.0.8"
let moduleName = "Client-SPM"
let checksum = "51dd4f14d34d24fa42852dcf3fe88f460660ef1b3b8f9f2f728397f57f587773"
let url = "https://github.com/ayush-apty/Client-SPM-SDK/releases/download/\(version)/Client-SPM.xcframework.zip"

let package = Package(
    name: moduleName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(name: moduleName, targets: [moduleName])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
        .package(url: "https://github.com/mobillium/MobilliumQRCodeReader.git", from: "1.0.0"),
        .package(url: "https://github.com/socketio/socket.io-client-swift", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: moduleName, url: url, checksum: checksum)
    ]
)
