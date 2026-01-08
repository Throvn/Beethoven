// swift-tools-version: 5.6
import PackageDescription

let package = Package(
  name: "Beethoven",
  platforms: [
	.macOS(.v10_14), .iOS(.v12)
  ],
  products: [
	.library(name: "Beethoven", targets: ["Beethoven"])
  ],
  dependencies: [
	.package(url: "https://github.com/Throvn/Pitchy", branch: "master")
  ],
  targets: [
	.target(name: "Beethoven", dependencies: [
		"Pitchy"
	], path: "Source")
  ]
)
