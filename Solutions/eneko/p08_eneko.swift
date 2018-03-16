import NinetyNineSwiftProblems

extension List where T: Equatable {
    /// P08 (**) Eliminate consecutive duplicates of list elements.
    /// - complexity: O(n)
    public func compress() -> List {
        let resultList = List(value)
        var resultListLast: List? = resultList
        var current = self
        while let next = current.nextItem {
            if resultListLast?.value != next.value {
                resultListLast?.nextItem = List(next.value)
                resultListLast = resultListLast?.nextItem
            }
            current = next
        }
        return resultList
    }
}
