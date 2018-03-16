import NinetyNineSwiftProblems

extension List {
    /// P19 (**) Rotate a list N places to the left.
    /// - complexity: O(n)
    public func rotate(amount: Int) -> List {
        // Split list in two pieces
        let listLength = length
        let splitIndex = listLength > 0 ? (listLength + amount) % listLength : 0
        let parts = split(at: splitIndex)

        // Start with second piece and walk to end
        var resultList: List! = parts.1
        var current: List? = resultList
        while let next = current?.nextItem {
            current = next
        }

        // Append first piece
        if resultList == nil {
            resultList = parts.0
        } else {
            current?.nextItem = parts.0
        }
        return resultList
    }
}
