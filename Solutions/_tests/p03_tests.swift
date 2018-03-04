import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P03 (*) Find the Kth element of a list.
    func testP03() {
        test(List(1, 1, 2, 3, 5, 8)[2], equals: 2, "Long middle")
        test(List(1, 1, 2, 3, 5, 8)[0], equals: 1, "Long first")
        test(List(1, 1, 2, 3, 5, 8)[10], equals: nil, "Out of bounds")
        test(List(1)[1], equals: nil, "Single element out of bounds")
    }

}
