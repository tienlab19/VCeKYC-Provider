// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VCeKYC-Provider",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "VCeKYC-Provider",
            targets: ["VCeKYC-Provider", "VFTeKYC", "OpenSSL"]
        ),
    ],
    dependencies: [
        .package(name: "VFTeKYC", path: "./Sources/VFTeKYC.xcframework"),
        .package(name: "OpenSSL", path: "./Sources/OpenSSL.xcframework")
    ],
    targets: [
        .target(
            name: "VCeKYC-Provider"
        ),
        .binaryTarget(name: "VFTeKYC", path: "./Sources/VFTeKYC.xcframework"),
        .binaryTarget(name: "OpenSSL", path: "./Sources/OpenSSL.xcframework")
    ]
)
