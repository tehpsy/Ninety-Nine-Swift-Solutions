import Foundation
import Basic
import Command

struct TestRunner {

    func run() throws {
        let arguments = ProcessInfo.processInfo.arguments
        if arguments.count == 2 {
            try runTests(username: arguments[1])
        } else {
            try runTests(usernames: loadUsernames())
        }
    }

    private func loadUsernames() throws -> [String] {
        var usernames = (try? FileManager.default.contentsOfDirectory(atPath: "Solutions")) ?? []
        usernames = usernames.filter { $0.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty == false }
            .filter { $0.hasPrefix(".") == false }
            .filter { $0 != "_tests" }
        return usernames.sorted()
    }

    private func runTests(usernames: [String]) throws {
        if usernames.isEmpty {
            Logger.log("Could not find any tests to run :(")
            return
        }
        try usernames.forEach(runTests)
    }

    private func runTests(username: String) throws {
        let solutions = loadSolutions(username: username)
        guard solutions.isEmpty == false else {
            Logger.log("Bummer, could not find any solutions for user '\(username)' at Solutions/\(username)")
            return
        }
        Logger.log("Running tests for: ".blue + username)
        try createFolder(username: username)
        try writeMain(username: username, solutions: solutions)
        try copyTestFiles(username: username, solutions: solutions)
        try executeTests(username: username)
    }

    private func createFolder(username: String) throws {
        let destination = "Solutions/\(username)/includes/"
        try? FileManager.default.removeItem(atPath: destination) // Fail if does not exist
        try FileManager.default.createDirectory(atPath: destination, withIntermediateDirectories: true, attributes: nil)
    }

    private func loadSolutions(username: String) -> [String] {
        let destination = "Solutions/\(username)/"
        let files = (try? FileManager.default.contentsOfDirectory(atPath: destination)) ?? []
        return files.filter { $0.hasSuffix(".swift") }.flatMap { $0.components(separatedBy: "_").first }.filter { $0.isEmpty == false }
    }

    private func writeMain(username: String, solutions: [String]) throws {
        let destination = "Solutions/\(username)/includes/main.swift"
        let tests = solutions.map { "tester.test\($0.uppercased())()" }.joined(separator: "\n")
        let main = """
            import Foundation
            import SolutionTester
            let tester = SolutionTester()
            \(tests)
            tester.showResults()
            exit(tester.exitCode)
            """
        let output = URL(fileURLWithPath: destination)
        try main.write(to: output, atomically: true, encoding: .utf8)
    }

    private func copyTestFiles(username: String, solutions: [String]) throws {
        let destination = "Solutions/\(username)/includes/"
        for solution in solutions {
            try FileManager.default.copyItem(atPath: "Solutions/_tests/\(solution)_tests.swift", toPath: destination + "\(solution)_tests.swift")
        }
    }

    private func executeTests(username: String) throws {
        let process = Basic.Process(arguments: ["swift", "run", username], redirectOutput: false)
        try process.launch()
        let result = try process.waitUntilExit()
        switch result.exitStatus {
        case let .signalled(signal):
            Logger.error("Test process was stopped with signal code \(signal))")
            exit(-1)
        case let .terminated(code) where code != 0:
            exit(code)
        default:
            break
        }
    }
}

try TestRunner().run()
