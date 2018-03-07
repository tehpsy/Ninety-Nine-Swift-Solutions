import Foundation
import Command

public func printWelcome() {
    let welcome = """
       ___  ___    ____       _ _____    ___           __   __
      / _ \\/ _ \\  / __/    __(_) _/ /_  / _ \\_______  / /  / /__ __ _  ___
      \\_, /\\_, / _\\ \\| |/|/ / / _/ __/ / ___/ __/ _ \\/ _ \\/ / -_)  ' \\(_-<
     /___//___/ /___/|__,__/_/_/ \\__/ /_/  /_/  \\___/_.__/_/\\__/_/_/_/___/
    """

    Logger.log(welcome.blue)
    Logger.log()
    Logger.log("×º°”˜`”°º× Welcome to Ninety-Nine Swift Problems & Solutions ×º°”˜`”°º×".blue)
    Logger.log()
}

public func printSetupInstructions() {
    Logger.log("To get started, run the following command:")
    Logger.log()
    Logger.log("  $ swift run setup <github_username>".yellow)
    Logger.log()
}

public func printSetupComplete() {
    Logger.log("You are all set!".green)
}

public func printStartSolvingInstructions() {
    Logger.log("To start solving your first problem, enter:")
    Logger.log()
    Logger.log("  $ swift run solve p01".yellow)
    Logger.log()
}

public func printStartSolvingNextInstructions() {
    Logger.log("To start solving your next problem, enter:")
    Logger.log()
    Logger.log("  $ swift run solve <problem_id>".yellow)
    Logger.log()
}

public func printUserStats(username: String, solutions: [String]) {
    Logger.log("Username: " + username.green)
    Logger.log("Problems solved: " + "\(solutions.count)".green)
    Logger.log()
}

public func printCourage() {
    Logger.log("If you get stuck on a problem, don't give up. Move to the next one and come back later. Good luck!\n")
}

public func printUsernameError() {
    Logger.error("Username not set.\n".red)
    printSetupInstructions()
}

