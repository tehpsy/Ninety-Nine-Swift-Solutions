import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P17 (*) Split a list into two parts.
    func testP17() {
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").split(at: 3).0?.description,
            equals: List("a", "b", "c").description,
            "Left side"
        )
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").split(at: 3).1?.description,
            equals: List("d", "e", "f", "g", "h", "i", "j", "k").description,
            "Right side"
        )
        test(
            List(1, 1, 2, 3, 5, 8).split(at: 3).0?.description,
            equals: "[1, 1, 2]",
            "Numbers left"
        )
        test(
            List(1, 1, 2, 3, 5, 8).split(at: 3).1?.description,
            equals: "[3, 5, 8]",
            "Numbers right"
        )
        test(
            List("a").split(at: 3).0?.description,
            equals: "[a]",
            "Single element left"
        )
        test(
            List("a").split(at: 3).1?.description,
            equals: nil,
            "Single element right"
        )
        test(
            List(1, 1, 2, 3, 5, 8).split(at: 0).0?.description,
            equals: nil,
            "Split at 0 left"
        )
        test(
            List(1, 1, 2, 3, 5, 8).split(at: 0).1?.description,
            equals: List(1, 1, 2, 3, 5, 8).description,
            "Split at 0 right"
        )
    }

}
