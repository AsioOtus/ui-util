// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "ui-extensions",
	products: [
		.library(
			name: "SwiftUIExtensions",
			targets: ["SwiftUIExtensions"]
		),
		.library(
			name: "UIKitExtensions",
			targets: ["UIKitExtensions"]
		),
	],
	targets: [
		.target(
			name: "SwiftUIExtensions",
			path: "SwiftUIExtensions/Source"
		),
		.target(
			name: "UIKitExtensions",
			path: "UIKitExtensions/Source"
		)
	]
)
