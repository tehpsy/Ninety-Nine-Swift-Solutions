import NinetyNineSwiftProblems

extension List {
    /// P24 (*) Lotto: Draw N different random numbers from the set 1..M.
    /// - complexity: O(n)
    public class func lotto(numbers: Int, maximum: Int) -> List<Int> {
        let numberList = List<Int>.range(from: 1, to: maximum)
        return numberList.randomSelect(amount: numbers)
    }
}

