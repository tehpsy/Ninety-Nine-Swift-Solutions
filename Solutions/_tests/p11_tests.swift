import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P11 (*) Modified run-length encoding.
    func testP11() {
        test(
            List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e").encodeModified().description,
            equals: List<Any>(List<Any>(4, "a"), "b", List<Any>(2, "c"), List<Any>(2, "a"), "d", List<Any>(4, "e")).description,
            "Encoding letters"
        )
        test(
            List(1, 1, 2, 3, 5, 8).encodeModified().description,
            equals: List<Any>(List<Any>(2, 1), 2, 3, 5, 8).description,
            "Encoding numbers"
        )
        test(List("a").encodeModified().description, equals: List("a").description, "Single element")
    }

}
