import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P08 (**) Eliminate consecutive duplicates of list elements.
    func testP08() {
        test(List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e").compress().description, equals: List("a", "b", "c", "a", "d", "e").description, "Letters")
        test(List(1, 1, 2, 3, 5, 8).compress().description, equals: List(1, 2, 3, 5, 8).description, "Numbers")
        test(List("a").compress().description, equals: List("a").description, "Single element")
    }

}
