import Foundation
import NinetyNineSwiftProblems
import Command
import Basic

var passes = 0
var failures = 0
var totalDuration: TimeInterval = 0

public struct SolutionTester {

    public init() {}

    public func test<T: Equatable>(_ expression: @autoclosure () -> T?, equals isEqualTo: @autoclosure () -> T?, _ desc: String, function: StaticString = #function) {
        let (value, duration) = meassure {
            expression()
        }
        let expectation = isEqualTo()
        if value == expectation {
            passes += 1
            Logger.log("[" + "PASS".green + "] \(function) '\(desc)' passed: \(value.unwrapped) == \(expectation.unwrapped) (\(duration.secs)) " + "✔".green)
        } else {
            failures += 1
            Logger.log("[" + "FAIL".red + "] \(function) '\(desc)' failed: " + "\(value.unwrapped) != \(expectation.unwrapped)".red + " (\(duration.secs)) " + "ⅹ".red)
        }
        totalDuration += duration
    }

    public func showResults() {
        Logger.log("")
        let totalTests = passes + failures
        if failures == 0 {
            Logger.log("  ✔ OK ".green + "> executed \(totalTests) tests, with \(failures) failures in \(totalDuration.secs)")
        } else {
            Logger.log("  ⅹ FAIL ".red + "> executed \(totalTests) tests, with \(failures) failures in \(totalDuration.secs)")
        }
        Logger.log("")
    }

    public var exitCode: Int32 {
        return failures == 0 ? 0 : -1
    }

    private func meassure<T>(block: () -> T) -> (T, TimeInterval) {
        let start = Date()
        let result = block()
        return (result, Date().timeIntervalSince(start))
    }

}

extension TimeInterval {
    var secs: String {
        return String(format: "%0.3f seconds", self)
    }
}

extension Optional {
    var unwrapped: String {
        switch self {
        case .none:
            return "nil"
        case let .some(wrapped):
            return String(describing: wrapped)
        }
    }
}
