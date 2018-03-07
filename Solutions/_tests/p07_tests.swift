import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P07 (**) Flatten a nested list structure.
    func testP07() {
        test(List<Any>(List<Any>(1, 1), 2, List<Any>(3, List<Any>(5, 8))).flatten().description, equals: "[1, 1, 2, 3, 5, 8]", "Nested lists")
        test(List(1, 1, 2, 3, 5, 8).flatten().description, equals: "[1, 1, 2, 3, 5, 8]", "Already flattened")
        test(List<Any>(List<Any>(List<Any>(List<Any>(List<Any>(1), List<Any>(2), List<Any>(3, 4))))).flatten().description, equals: "[1, 2, 3, 4]", "Deep")
    }

}
