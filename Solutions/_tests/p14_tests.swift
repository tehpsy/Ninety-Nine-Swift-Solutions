import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P14 (*) Duplicate the elements of a list.
    func testP14() {
        test(
            List("a", "b", "c", "c", "d").duplicate().description,
            equals: List("a", "a", "b", "b", "c", "c", "c", "c", "d", "d").description,
            "Letters"
        )
        test(
            List(1, 1, 2, 3, 5, 8).duplicate().description,
            equals: List(1, 1, 1, 1, 2, 2, 3, 3, 5, 5, 8, 8).description,
            "Numbers"
        )
        test(List("a").duplicate().description, equals: List("a", "a").description, "Single element")
    }

}
