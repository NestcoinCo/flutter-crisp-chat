// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "crisp_chat",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "crisp-chat",
            targets: ["crisp_chat"]
        )
    ],
    dependencies: [
        // The Flutter framework, vended by the Flutter tool as a Swift package
        // during the app build. See:
        // https://docs.flutter.dev/packages-and-plugins/swift-package-manager/for-plugin-authors
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(
            url: "https://github.com/crisp-im/crisp-sdk-ios.git",
            from: "2.13.0"
        )
    ],
    targets: [
        .target(
            name: "crisp_chat",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "Crisp", package: "crisp-sdk-ios")
            ]
        )
    ]
)
