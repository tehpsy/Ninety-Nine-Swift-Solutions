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
    .target(name: "SolutionTester", dependencies: ["NinetyNineSwiftProblems", "Rainbow"]),
    .target(name: "runner", dependencies: targetDependencies),
]

var userTargets: [Target] {
    let filename = URL(fileURLWithPath: "usernames")
    let usernames = (try? String(contentsOf: filename).components(separatedBy: .newlines)) ?? []
    let users = usernames.filter { $0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false }

    let targets = users.map {
        Target.target(name: $0, dependencies: targetDependencies, path: "Solutions/\($0)")
    }
    return targets
}

let targets = defaultTargets + userTargets

let package = Package(name: "NinetyNineSwiftSolutions", dependencies: packageDependencies, targets: targets)
