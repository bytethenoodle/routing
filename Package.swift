import PackageDescription

let package = Package(
    name: "Routing",
    targets: [
        // Routing
        Target(name: "Branches"),
        Target(name: "Routing", dependencies: ["Branches"]),
    ],
    dependencies: [
        // Core vapor transport layer
        .Package(url: "https://github.com/bytethenoodle/engine.git", majorVersion: 2),
        .Package(url: "https://github.com/bytethenoodle/node.git", majorVersion: 2),
    ],
    exclude: [
        "Sources/TypeSafeGenerator"
    ]
)
