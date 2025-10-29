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
            linkerSettings: [
                .linkedFramework("CoreTelephony"),
            ]
        ),
        .binaryTarget(
            name: "Airflux",
            url: "https://sdk-download.airflux.ai/airflux-ios-sdk/1.0.1/Airflux.zip",
            checksum: "2b49374d6ba3b9233144d80b46b1d96d800f0b66a79c58aeaf002eb7117ac307"
        ),
    ]
)
