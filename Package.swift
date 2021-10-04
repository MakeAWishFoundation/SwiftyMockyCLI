// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

#if os(macOS)
/// MacOS swiftymocky mackage
let package = Package(
    name: "swiftymocky-cli",
    products: [
        .executable(name: "swiftymocky", targets: ["SwiftyMockyCLI"]),
    ],
    dependencies: [
        .package(url: "https://github.com/MakeAWishFoundation/SwiftyMocky.git", from: "4.0.1"),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.3.0"),
        .package(url: "https://github.com/tuist/xcodeproj.git", from: "8.3.1"),
        .package(url: "https://github.com/luoxiu/Chalk", .exact("0.0.7")),
        .package(url: "https://github.com/kylef/Commander", .exact("0.9.1")),
        .package(url: "https://github.com/kylef/PathKit", from: "1.0.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "3.0.1"),
    ],
    targets: [
        .target(
           name: "SwiftyMockyCLI",
           dependencies: [
               "Commander",
               "SwiftyMockyCLICore",
           ]
        ),
        .target(
           name: "SwiftyMockyCLICore",
           dependencies: [
               "ShellOut",
               "Chalk",
               "XcodeProj",
               "PathKit",
               "Yams",
           ]
        ),
        .testTarget(
           name: "SwiftyMockyCLICoreTests",
           dependencies: [
               "SwiftyMockyCLICore",
               "SwiftyMocky",
           ]
        ),
   ]
)
#else
/// Linux package. For now not really usable, until sourcery would be available too
let package = Package(
    name: "swiftymocky",
    products: [
        .executable(name: "swiftymocky", targets: ["SwiftyMockyCLI"]),
    ],
    dependencies: [
        // .package(url: "https://github.com/MakeAWishFoundation/SwiftyMocky.git", .branch("develop")),
        .package(url: "https://github.com/MakeAWishFoundation/SwiftyMocky.git", from: "4.0.0"),
        .package(url: "https://github.com/JohnSundell/ShellOut.git", from: "2.3.0"),
        .package(url: "https://github.com/luoxiu/Chalk", .exact("0.0.7")),
        .package(url: "https://github.com/kylef/Commander", .exact("0.9.1")),
        .package(url: "https://github.com/kylef/PathKit", from: "1.0.1"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "3.0.1"),
    ],
    targets: [
        .target(
            name: "SwiftyMockyCLI",
            dependencies: [
                "Commander",
                "SwiftyMockyCLICore",
            ]
        ),
        .target(
            name: "SwiftyMockyCLICore",
            dependencies: [
                "ShellOut",
                "Chalk",
                "PathKit",
                "Yams",
            ],
            exclude: [
                "Commands/MacOS",
                "Utils/MacOS",
            ]
        ),
        .testTarget(
            name: "SwiftyMockyCLICoreTests",
            dependencies: [
                "SwiftyMockyCLICore",
                "SwiftyMocky",
            ]
        ),
    ]
)
#endif
