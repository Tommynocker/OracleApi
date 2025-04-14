// swift-tools-version:6.0
import PackageDescription

let package = Package(
    name: "OracleApi",
    platforms: [
        .macOS(.v13)
    ],
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "4.110.1"),
        // 🔵 Non-blocking, event-driven networking for Swift
        .package(url: "https://github.com/apple/swift-nio.git", from: "2.79.0"),
        .package(url: "https://github.com/lovetodream/oracle-nio.git", from: "1.0.0-beta.3"),
        .package(url: "https://github.com/vapor/fluent.git", from: "4.0.0"),
        .package(url: "https://github.com/vapor/fluent-mysql-driver.git", from: "4.0.0"),
        
        //1.0.0-beta.3
        
    ],
    targets: [
        .executableTarget(
            name: "App",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "NIOCore", package: "swift-nio"),
                .product(name: "NIOPosix", package: "swift-nio"),
                .product(name: "OracleNIO", package: "oracle-nio"),
                .product(name: "Fluent", package: "fluent"),
                // Add FluentOracle dependency
                .product(name: "OracleNIOMacros", package: "oracle-nio"),
                .product(name: "FluentMySQLDriver", package: "fluent-mysql-driver"),
               
                
            ],
            swiftSettings: swiftSettings
        ),
        .testTarget(
            name: "AppTests",
            dependencies: [
                .target(name: "App"),
                .product(name: "VaporTesting", package: "vapor"),
            ],
            swiftSettings: swiftSettings
        )
    ],
    swiftLanguageModes: [.v5]
)

var swiftSettings: [SwiftSetting] { [
    .enableUpcomingFeature("DisableOutwardActorInference"),
    .enableExperimentalFeature("StrictConcurrency"),
] }
