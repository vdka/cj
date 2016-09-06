import PackageDescription

let package = Package(
  name: "cj",
  dependencies: [
    .Package(url: "https://github.com/vdka/json.git", majorVersion: 0)
  ]
)
