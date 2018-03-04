import Foundation
import NinetyNineSwiftProblems
import Rainbow

extension TimeInterval {
    var secs: String {
        return String(format: "%0.3f seconds", self)
    }
}

public struct SolutionTester {

    public init() {}

    public func runTests(username: String) {
        let path = "Solutions/\(username)"
        let files = (try? FileManager.default.contentsOfDirectory(atPath: path)) ?? []
        for file in files {
            if file.hasPrefix("p") {
                print(file)
            }
        }
    }

    public func test<T: Equatable>(_ expression: @autoclosure () -> T, equals isEqualTo: @autoclosure () -> T, _ desc: String) {
        let (value, duration) = meassure {
            expression()
        }
        let expectation = isEqualTo()
        if value == expectation {
            print("[" + "PASS".green + "] Test '\(desc)' passed: \(value) == \(expectation) (\(duration.secs)) " + "✔".green)
        } else {
            print("[" + "FAIL".red + "] Test '\(desc)' failed: " + "\(value) != \(expectation)".red + " (\(duration.secs)) " + "ⅹ".red)
        }
    }

    func meassure<T>(block: () -> T) -> (T, TimeInterval) {
        let start = Date()
        let result = block()
        return (result, Date().timeIntervalSince(start))
    }

}

