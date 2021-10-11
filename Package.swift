// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swiftymocky",
    products: [
        // CLI Executable
        .executable(name: "swiftymocky", targets: ["SwiftyMockyCLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/JohnSundell/ShellOut", .upToNextMajor(from: "2.3.0")),
        .package(url: "https://github.com/tuist/xcodeproj", .upToNextMajor(from: "8.3.1")),
        .package(url: "https://github.com/luoxiu/Chalk", .exact("0.2.1")),
        .package(url: "https://github.com/kylef/Commander", .upToNextMajor(from: "0.9.1")),
        .package(url: "https://github.com/kylef/PathKit", .upToNextMajor(from: "1.0.1")),
        .package(url: "https://github.com/jpsim/Yams", .exact("3.0.1")),
    ],
    targets: [
        // CLI Executable
        .target(
            name: "SwiftyMockyCLI",
            dependencies: [
                "Commander",
                "SwiftyMockyCLICore",
            ],
            path: "./Sources/CLI/App"
        ),
        .target(
            name: "SwiftyMockyCLICore",
            dependencies: [
                "ShellOut",
                "Chalk",
                .product(name: "XcodeProj", package: "xcodeproj"),
                "PathKit",
                "Yams",
            ],
            path: "./Sources/CLI/Core"
        ),
    ]
)
