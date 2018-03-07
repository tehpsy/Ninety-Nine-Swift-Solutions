import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P33 (*) Determine whether two positive integer numbers are coprime.
    func testP33() {
        Test("Coprimes") {
            assert(35.isCoprimeTo(other: 64), equals: true)
        }
    }

}
