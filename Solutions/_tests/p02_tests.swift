import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P02 (*) Find the last but one element of a list.
    func testP02() {
        test(List(1, 1, 2, 3, 5, 8).penultimate, equals: 5, "long list")
        test(List(1, 1).penultimate, equals: 1, "two element list")
        test(List(1).penultimate, equals: nil, "one element list")
    }
    
}
