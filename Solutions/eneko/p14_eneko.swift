import NinetyNineSwiftProblems

extension List {
    /// P14 (*) Duplicate the elements of a list.
    /// - complexity: O(n)
    public func duplicate() -> List {
        var resultList: List!
        var resultListLast: List!
        var current: List? = self
        while let value = current?.value {
            let newItem = List(value)
            newItem.nextItem = List(value)
            if resultList == nil {
                resultList = newItem
            } else {
                resultListLast.nextItem = newItem
            }
            resultListLast = newItem.nextItem
            current = current?.nextItem
        }
        return resultList
    }
}

