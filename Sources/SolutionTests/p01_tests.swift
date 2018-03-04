import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P01 (*) Find the last element of a list.
    public func testP01() {
        test(List(1, 1, 2, 3, 5, 8).last, equals: 7, "last of multiple elements")
        test(List(1, 1, 2, 3, 5, 8).last, equals: 8, "last of multiple elements")
        test(List(1).last, equals: 1, "last of one element")
    }

}
