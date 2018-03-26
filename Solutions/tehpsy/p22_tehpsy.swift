import NinetyNineSwiftProblems

extension List {
    /// P22 (*) Generate a list of integers between two input integers
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    class func range(from fromIndex: Int, to toIndex: Int) -> List<Int> {

        var head: List<Int>?
        var tail: List<Int>?

        let incAmount = fromIndex <= toIndex ? 1 : -1

        for index in stride(from: fromIndex, through: toIndex, by: incAmount) {

            let newItem: List<Int> = List<Int>(index)

            if head == nil {
                head = newItem
            } else {
                tail?.nextItem = newItem
            }
            tail = newItem
        }

        return head!
    }
}
