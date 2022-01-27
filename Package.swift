// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Nominatim",
    products: [
        .library(
            name: "Nominatim",
            targets: ["Nominatim"]
        ),
    ],
    targets: [
        .target(
            name: "Nominatim",
            path: "Pods/Classes"
        )
    ]
)
