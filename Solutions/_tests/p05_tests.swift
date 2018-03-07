import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P05 (*) Reverse a list.
    func testP05() {
        test(List(1, 1, 2, 3, 5, 8).reverse().description, equals: "[8, 5, 3, 2, 1, 1]", "Long")
        test(List(1, 1, 2, 1, 1).reverse().description, equals: "[1, 1, 2, 1, 1]", "Medium")
        test(List(1).reverse().description, equals: "[1]", "Single element")
    }

}
