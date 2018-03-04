import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P02 (*) Find the last but one element of a list.
    func testP02() {
        test(List(1, 1, 2, 3, 5, 8).pennultimate, equals: 5, "long list")
        test(List(1, 1).pennultimate, equals: 1, "two element list")
        test(List(1).pennultimate, equals: nil, "one element list")
    }
    
}
