// swift-tools-version:4.0
import PackageDescription
import Foundation

let packageDependencies: [PackageDescription.Package.Dependency] = [
    .package(url: "https://github.com/apple/swift-package-manager.git", from: "0.1.0"),
    .package(url: "https://github.com/onevcat/Rainbow", from: "3.0.0")
]

let targetDependencies: [Target.Dependency] = ["Command", "NinetyNineSwiftProblems", "SolutionTester", "Utility"]

let defaultTargets: [Target] = [
    .target(name: "Command", dependencies: ["Utility"]),
    .target(name: "NinetyNineSwiftProblems", dependencies: []),
    .target(name: "SolutionTester", dependencies: ["Command", "NinetyNineSwiftProblems", "Rainbow", "Utility"]),
    .target(name: "runner", dependencies: targetDependencies),
    .target(name: "test", dependencies: targetDependencies),
]

var userTargets: [Target] {
    var usernames = Set<String>((try? FileManager.default.contentsOfDirectory(atPath: "Solutions")) ?? [])
    usernames = usernames.filter { $0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false && $0.hasPrefix(".") == false }
    return usernames.map { Target.target(name: $0, dependencies: targetDependencies, path: "Solutions/\($0)") }
}

let targets = defaultTargets + userTargets

let package = Package(name: "NinetyNineSwiftSolutions", dependencies: packageDependencies, targets: targets)
