import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {
    
    // P19 (**) Rotate a list N places to the left.
    func testP19() {
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").rotate(amount: 3).description,
            equals: List("d", "e", "f", "g", "h", "i", "j", "k", "a", "b", "c").description,
            "Rotate 3"
        )
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").rotate(amount: 11).description,
            equals: List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").description,
            "Rotate 11"
        )
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").rotate(amount: 0).description,
            equals: List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").description,
            "Rotate 0"
        )
        test(
            List(1, 1, 2, 3, 5, 8).rotate(amount: 3).description,
            equals: List(3, 5, 8, 1, 1, 2).description,
            "Rotate 3"
        )
        test(
            List("a").rotate(amount: 3).description,
            equals: List("a").description,
            "Rotate 3")
        
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").rotate(amount: -2).description,
            equals: List("j", "k", "a", "b", "c", "d", "e", "f", "g", "h", "i").description,
            "Rotate -2"
        )
        test(
            List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").rotate(amount: -11).description,
            equals: List("a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k").description,
            "Rotate -11"
        )
        test(
            List(1, 1, 2, 3, 5, 8).rotate(amount: -2).description,
            equals: List(5, 8, 1, 1, 2, 3).description,
            "Rotate -2"
        )
        test(
            List("a").rotate(amount: -2).description,
            equals: List("a").description,
            "Rotate -2")
    }
    
}
