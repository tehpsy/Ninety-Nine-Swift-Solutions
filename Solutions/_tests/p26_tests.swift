import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P26 (**) Generate the combinations of K distinct objects chosen from the N elements of a list.
    func testP26() {
        test(List(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12).combinations(group: 3)?.length, 220)
        test(List("a", "b", "c", "d", "e", "f").combinations(group: 3)?.length, 20)
        test(List(1, 1, 2, 3, 5, 8).combinations(group: 3)?.length, 20)
        test(List(1).combinations(group: 1)?.description, "[[1]]")
        test(List("a").combinations(group: 3))
        test(List("a", "b", "c").combinations(group: 2)?.length, 3)
    }

}
