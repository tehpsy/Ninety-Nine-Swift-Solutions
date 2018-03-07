import Foundation
import NinetyNineSwiftProblems
import Command
import Basic

var passes = 0
var failures = 0
var totalDuration: TimeInterval = 0

public class SolutionTester {

    public init() {}

    public func test<T: Equatable>(_ expression: @autoclosure () -> T?, equals isEqualTo: @autoclosure () -> T?, _ desc: String, function: StaticString = #function) {
        let (value, duration) = meassure {
            expression()
        }
        let expectation = isEqualTo()
        if value == expectation {
            passes += 1
//            Logger.log("[" + "PASS".green + "] \(function) '\(desc)' passed: \(value.unwrapped) == \(expectation.unwrapped) (\(duration.secs)) " + "✔".green)
            Logger.log("[" + "PASS".green + "] \(function) '\(desc)' passed (\(duration.secs)) " + "✔".green)
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

    public struct Test {
        @discardableResult
        public init(_ desc: String, function: StaticString = #function, assertions: () -> Void) {
            let beforePasses = passes
            let beforeFailures = failures
            let beforeDuration = totalDuration
            assertions()
            let deltaFailures = failures - beforeFailures
            let deltaPasses = passes - beforePasses
            let deltaDuration = totalDuration - beforeDuration
            if deltaFailures > 0 {
                Logger.log("[" + "FAIL".red + "] \(function) '\(desc)' failed: \(deltaFailures) failures (\(deltaDuration.secs)) " + "ⅹ".red)
            } else if passes > beforePasses {
                Logger.log("[" + "PASS".green + "] \(function) '\(desc)' passed: \(deltaPasses) assertions (\(deltaDuration.secs)) " + "✔".green)
            } else {
                // No tests?
            }
        }
    }

    public func assert<T: Equatable>(_ expression: @autoclosure () -> T?, equals isEqualTo: @autoclosure () -> T?) {
        let (value, duration) = meassure {
            expression()
        }
        let expectation = isEqualTo()
        if value == expectation {
            passes += 1
            //            Logger.log("[" + "PASS".green + "] \(function) '\(desc)' passed: \(value.unwrapped) == \(expectation.unwrapped) (\(duration.secs)) " + "✔".green)
//            Logger.log("[" + "PASS".green + "] \(function) '\(desc)' passed (\(duration.secs)) " + "✔".green)
        } else {
            failures += 1
            Logger.log("[" + "FAIL".red + "] assertion failed: " + "\(value.unwrapped) != \(expectation.unwrapped)".red + " (\(duration.secs)) " + "ⅹ".red)
        }
        totalDuration += duration
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
