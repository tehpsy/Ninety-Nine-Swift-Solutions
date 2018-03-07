import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P06 (*) Find out whether a list is a palindrome.
    func testP06() {
        test(List(1, 1, 2, 3, 5, 8).isPalindrome(), equals: false, "Even number of elements")
        test(List(1, 1, 2, 1, 1).isPalindrome(), equals: true, "Odd number of elements")
        test(List(1).isPalindrome(), equals: true, "Single element")
    }

}
