import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P25 (*) Generate a random permutation of the elements of a list.
    func testP25() {
        let l1 = List("a", "b", "c", "d", "e", "f")
        l1.randomPermute().forEach {
            XCTAssertTrue(l1.contains($0))
        }
        let l2 = List(1, 1, 2, 3, 5, 8)
        l2.randomPermute().forEach {
            XCTAssertTrue(l2.contains($0))
        }
        test(List("a").randomPermute().description, List("a").description)
    }

}
