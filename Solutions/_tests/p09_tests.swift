import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P09 (**) Pack consecutive duplicates of list elements into sublists.
    func testP09() {
        test(List("a", "a", "a", "a", "b", "c", "c", "a", "a", "d", "e", "e", "e", "e").pack().description, equals: List(List("a", "a", "a", "a"), List("b"), List("c", "c"), List("a", "a"), List("d"), List("e", "e", "e", "e")).description, "Letters")
        test(List(1, 1, 2, 3, 5, 8).pack().description, equals: "[[1, 1], [2], [3], [5], [8]]", "Numbers")
        test(List("a").pack().description, equals: List(List("a")).description, "Single element")
    }

}
