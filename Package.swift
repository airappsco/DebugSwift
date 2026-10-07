// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "DebugSwift",
    defaultLocalization: "en",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "DebugSwift",
            targets: ["DebugSwift"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DebugSwift",
            dependencies: [],
            path: "DebugSwift",
            resources: [
                .process("Resources")
            ],
            swiftSettings: [
                // SPM targets do not inherit the app's DEBUG flag; define it
                // explicitly so #if DEBUG source gating works in Debug builds.
                .define("DEBUG", .when(configuration: .debug))
            ]
        )
    ],
    swiftLanguageModes: [.v6]
)
