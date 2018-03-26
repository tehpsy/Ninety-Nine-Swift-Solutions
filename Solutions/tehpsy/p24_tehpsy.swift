import NinetyNineSwiftProblems

extension List {
    /// P24 (*) Draw N different random numbers from the set 1..M
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    class func lotto(numbers: Int, maximum: Int) -> List<Int>? {

        let list = List.range(from: 1, to: maximum)
        return list.randomSelect(amount: numbers)
    }
}
