//
//  SolutionTester.swift
//  NinetyNineSwiftSolutions
//
//  Created by Eneko Alonso on 3/3/18.
//

import XCTest
import Foundation
//import NinetyNineSwiftProblems

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


}
