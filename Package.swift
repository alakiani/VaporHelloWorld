// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "hello",
    dependencies: [
        // 💧 A server-side Swift web framework.
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),

        // 🔵 Swift ORM (queries, models, relations, etc) built on SQLite 3.
        .package(url: "https://github.com/vapor/fluent-sqlite.git", from: "3.0.0"),

        .package(url: "https://github.com/vapor/crypto.git", .upToNextMajor(from: "3.0.0"))


        // // BCrypt Package
        // .package(url: "https://github.com/vapor-community/bcrypt.git", from: "1.1.1")

    ],
    targets: [
        .target(name: "App", dependencies: ["FluentSQLite", "Vapor"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

