import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P21 (*) Insert an element at a given position into a list.
    func testP21() {
        test(
            List("a", "b", "c", "d").insert(at: 1, value: "new").description,
            equals: List("a", "new", "b", "c", "d").description,
            "Letters"
        )
        test(
            List<Any>(1, 1, 2, 3, 5, 8).insert(at: 1, value: "new").description,
            equals: List<Any>(1, "new", 1, 2, 3, 5, 8).description,
            "Mixed"
        )
        test(
            List("a").insert(at: 1, value: "new").description,
            equals: List("a", "new").description,
            "Single element"
        )
    }

}
