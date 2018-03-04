//
//  Username.swift
//  runner
//
//  Created by Eneko Alonso on 3/3/18.
//

import Foundation
import Command

struct Username {
    static private let filename = ".username"

    let value: String

    init?() {
        guard FileManager.default.fileExists(atPath: Username.filename) else {
            return nil
        }
        let fileURL = URL(fileURLWithPath: Username.filename)
        guard let value = try? String(contentsOf: fileURL) else {
            return nil
        }
        self.value = value.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    static func set(username: String) throws {
        try username.write(toFile: filename, atomically: true, encoding: .utf8)
    }

    static func printError() {
        Logger.error("Username not set. Please run 'runner username <your GitHub username>'.".red)
    }
}
