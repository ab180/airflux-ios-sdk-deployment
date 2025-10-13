// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "airflux-ios-sdk",
    platforms: [
        .iOS(.v12),
    ],
    products: [
        .library(
            name: "Airflux",
            targets: ["_Airflux"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "_Airflux",
            dependencies: ["Airflux"],
            path: "Source",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "Airflux",
            url: "https://sdk-download.airflux.ai/airflux-ios-sdk/1.0.0/Airflux.zip",
            checksum: "2908eb0a3460ce8ec092c7e741c8db0ce84f8ae3bc13f133465b70f0a7a12e28"
        ),
    ]
)
