import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P16 (**) Drop every Nth element from a list.
    func testP16() {
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").drop(every: 3)?.description,
            equals: List("a", "b", "d", "e", "g", "h", "j", "k").description,
            "Letters"
        )
        test(
            List(1, 1, 2, 3, 5, 8).drop(every: 3)?.description,
            equals: List(1, 1, 3, 5).description,
            "Numbers"
        )
        test(List("a").drop(every: 3)?.description, equals: List("a").description, "Single element")
        test(List(1, 1, 2, 3, 5, 8).drop(every: 2)?.description, equals: List(1, 2, 5).description, "Every 2")
        test(List(1, 1, 2, 3, 5, 8).drop(every: 1)?.description, equals: nil, "Every 1")
        test(List(1, 1, 2, 3, 5, 8).drop(every: 0)?.description, equals: nil, "Every 0")
        test(List(1, 1, 2, 3, 5, 8).drop(every: -1)?.description, equals: nil, "Every -1")
    }

}
