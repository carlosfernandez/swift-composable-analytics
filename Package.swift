// swift-tools-version: 5.8

import PackageDescription

let package = Package(
	name: "swift-composable-analytics",
	platforms: [
		.iOS(.v16),
		.macOS(.v13),
		.tvOS(.v16),
		.watchOS(.v9),
	],
	products: [
		.library(name: "ComposableAnalytics", targets: ["ComposableAnalytics"]),
	],
	dependencies: [
		.package(url: "https://github.com/pointfreeco/swift-composable-architecture", .upToNextMajor(from: "1.26.2")),
		.package(url: "https://github.com/pointfreeco/swift-issue-reporting", from: "2.1.0"),
	],
	targets: [
		.target(
			name: "ComposableAnalytics",
			dependencies: [
				.product(name: "IssueReporting", package: "swift-issue-reporting"),
				.product(name: "ComposableArchitecture", package: "swift-composable-architecture"),
			]
		)
	]
)
