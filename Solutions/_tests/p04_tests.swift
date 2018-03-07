import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P04 (*) Find the number of elements of a list.
    func testP04() {
        test(List(1, 1, 2, 3, 5, 8).length, equals: 6, "Long")
        test(List(1).length, equals: 1, "Single element")
    }

}
