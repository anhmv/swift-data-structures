// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let name = "DataStructures"
let testsString = "Tests"

let package = Package(
  name: name,
  targets: [
    .target(name: name, path: "Sources"),
    .testTarget(
      name: "\(name)\(testsString)",
      dependencies: [Target.Dependency(stringLiteral: name)],
      path: testsString
    )
  ]
)
