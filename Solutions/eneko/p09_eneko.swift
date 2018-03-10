import NinetyNineSwiftProblems

extension List where T: Equatable {
    /// P09 (**) Pack consecutive duplicates of list elements into sublists.
    /// - complexity: O(n)
    public func pack() -> List<List<T>> {
        var resultList: List<List<T>>!
        var resultListLast: List<List<T>>!
        var current: List? = self
        var innerList: List!
        var innerListLast = innerList
        while let value = current?.value {
            let newItem = List(value)
            if innerList == nil {
                innerList = newItem
            } else {
                innerListLast!.nextItem = newItem
            }
            innerListLast = newItem
            if value != current?.nextItem?.value {
                let newResultItem = List<List<T>>(innerList)
                if resultList == nil {
                    resultList = newResultItem
                } else {
                    resultListLast.nextItem = newResultItem
                }
                resultListLast = newResultItem
                innerList = nil
                innerListLast = nil
            }
            current = current?.nextItem
        }
        return resultList
    }
}
