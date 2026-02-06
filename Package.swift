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
            url: "https://sdk-download.airflux.ai/airflux-ios-sdk/1.0.2/Airflux.zip",
            checksum: "16fe2c577674683b4bd7b3ec44effa33bbcebd1c8551bcf9622b77b48ba090b7"
        ),
    ]
)
