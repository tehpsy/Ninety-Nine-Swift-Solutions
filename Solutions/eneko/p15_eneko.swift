import NinetyNineSwiftProblems

extension List {
    /// P15 (**) Duplicate the elements of a list a given number of times.
    /// - complexity: O(n*m)
    public func duplicate(times: Int) -> List {
        var resultList: List!
        var resultListLast: List!
        var current: List? = self
        while let value = current?.value {
            let newItem = List(value)
            var newItemLast = newItem
            for _ in 1..<times {
                let dupe = List(value)
                newItemLast.nextItem = dupe
                newItemLast = dupe
            }
            if resultList == nil {
                resultList = newItem
            } else {
                resultListLast.nextItem = newItem
            }
            resultListLast = newItemLast
            current = current?.nextItem
        }
        return resultList
    }
}

