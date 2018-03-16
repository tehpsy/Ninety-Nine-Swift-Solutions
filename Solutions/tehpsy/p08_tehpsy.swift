import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P08 (*) Compresses a List
    /// - returns: New List with duplicate elements removed
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func compress() -> List {

        let resultHead = List(value)
        var resultTail = resultHead

        var current: List<T>? = self
        while let next = current?.nextItem {
            if next.value != resultTail.value {
                resultTail.nextItem = List(next.value)
                resultTail = resultTail.nextItem!
            }
            current = next
        }

        return resultHead
    }
}
