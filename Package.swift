// swift-tools-version:5.5

import PackageDescription

let package = Package(
	name: "ui-util",
	platforms: [
		.iOS(.v13)
	],
	products: [
		.library(
			name: "SwiftUIUtil",
			targets: ["SwiftUIUtil"]
		),
		.library(
			name: "UIKitUtil",
			targets: ["UIKitUtil"]
		),
	],
	targets: [
		.target(
			name: "SwiftUIUtil",
			path: "SwiftUIUtil/Source"
		),
		.target(
			name: "UIKitUtil",
			path: "UIKitUtil/Source"
		)
	]
)
