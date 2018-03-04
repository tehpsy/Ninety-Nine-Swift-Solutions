import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P15 (**) Duplicate the elements of a list a given number of times.
    func testP15() {
        test(
            List("a", "b", "c", "c", "d").duplicate(times: 3).description,
            equals: List("a", "a", "a", "b", "b", "b", "c", "c", "c", "c", "c", "c", "d", "d", "d").description,
            "Letters"
        )
        test(
            List(1, 1, 2, 3, 5, 8).duplicate(times: 3).description,
            equals: List(1, 1, 1, 1, 1, 1, 2, 2, 2, 3, 3, 3, 5, 5, 5, 8, 8, 8).description,
            "Numbers"
        )
        test(
            List("a").duplicate(times: 9).description,
            equals: List("a", "a", "a", "a", "a", "a", "a", "a", "a").description,
            "Single element"
        )
    }

}
