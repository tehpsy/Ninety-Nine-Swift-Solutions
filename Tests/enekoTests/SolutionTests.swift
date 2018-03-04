//
//  SolutionTests.swift
//  NinetyNineSwiftSolutions
//
//  Created by Eneko Alonso on 3/3/18.
//

import XCTest
import NinetyNineSwiftProblems
import NinetyNineSwiftSolutionsTests
import eneko

class SolutionTests: XCTestCase {

    let username = "eneko"

//    func testSolutions() {
//        SolutionTester().runTests(username: username)
//    }

    // P01 (*) Find the last element of a list.
    func testP01() {
        XCTAssertEqual(List(1, 1, 2, 3, 5, 8).last, 8)
        XCTAssertEqual(List(1).last, 1)
    }

}
