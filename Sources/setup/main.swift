import Foundation
import Command
import Rainbow
import SolutionTester

let arguments = ProcessInfo.processInfo.arguments

func printUserInfo(username: String) {
    Logger.log("Username: " + username.green)
    let solutions: [String] = Solutions.loadSolutions(username: username)
    if solutions.isEmpty {
        printStartSolvingInstructions()
    } else {
        Logger.log("Problems solved: " + "\(solutions.count)".green)
        Logger.log("You are all set!".green)
        Logger.log()
        printStartSolvingNextInstructions()
    }
}

func setupUser(username: String) {
    Logger.log("Setting up user: \(username)")
    let path = "Solutions/\(username)"
    do {
        try Username.set(username: username)
    } catch {
        Logger.log("Error: failed to write username configuration".red)
        exit(-1)
    }
    if FileManager.default.fileExists(atPath: path) {
        Logger.log("Solutions directory found at '\(path)'")
        printSetupComplete()
        printStartSolvingInstructions()
        return
    }

    do {
        try Solutions.createFolder(username: username)
        try Solutions.writeMain(username: username, solutions: [])
    } catch {
        Logger.log("Error: failed to create solutions folder at '\(path)'".red)
        exit(-1)
    }
}


if let username = Username() {
    printWelcome()
    printUserInfo(username: username.value)
} else if arguments.count == 2 {
    setupUser(username: arguments[1])
} else {
    printWelcome()
    printSetupInstructions()
}
printCourage()
