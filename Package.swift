// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "xpkg-mint",
    platforms: [
        .macOS(.v10_13)
    ],
    products: [
        .executable(name: "xpkg-mint-xpkg-hooks", targets: ["xpkg-mint-xpkg-hooks"]),
    ],
    dependencies: [
        .package(url: "https://github.com/elegantchaos/XPkgPackage", from:"1.0.5"),
    ],
    targets: [
        .target(
            name: "xpkg-mint-xpkg-hooks",
            dependencies: ["XPkgPackage"]),
    ]
)
