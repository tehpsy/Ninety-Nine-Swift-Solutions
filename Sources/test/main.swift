import Foundation
import Basic
import Command

struct TestRunner {

    func run() throws {
        let arguments = ProcessInfo.processInfo.arguments
        if arguments.count == 2 {
            let username = arguments[1]
            try runTests(username: username)
        }
    }

    private func runTests(username: String) throws {
        Logger.log("Running tests for: ".blue + username)
        try createFolder(username: username)
        try writeMain(username: username)
        try copyTestFiles(username: username)
        try executeTests(username: username)
    }

    private func createFolder(username: String) throws {
        let destination = "Solutions/\(username)/includes/"
        try? FileManager.default.removeItem(atPath: destination) // Fail if does not exist
        try FileManager.default.createDirectory(atPath: destination, withIntermediateDirectories: true, attributes: nil)
    }

    private func writeMain(username: String) throws {
        let destination = "Solutions/\(username)/includes/main.swift"
        let main = """
            import SolutionTester
            let username = "\(username)"
            SolutionTester().runTests(username: username)
            SolutionTester().testP01()
            """
        let output = URL(fileURLWithPath: destination)
        try main.write(to: output, atomically: true, encoding: .utf8)
    }

    private func copyTestFiles(username: String) throws {
        let destination = "Solutions/\(username)/includes/"
        try FileManager.default.copyItem(atPath: "Sources/SolutionTests/p01_tests.swift", toPath: destination + "p01_tests.swift")
    }

    private func executeTests(username: String) throws {
        let process = Basic.Process(arguments: ["swift", "run", username], redirectOutput: false)
        try process.launch()
        try process.waitUntilExit()
    }
}

try TestRunner().run()
