import NinetyNineSwiftProblems

extension List {
    /// P18 (**) Extract a slice from a list.
    /// - complexity: O(n)
    public func slice(from: Int, to: Int) -> List? {
        var resultList: List?
        var resultListLast: List?
        var current: List? = self
        var index = 0
        while let value = current?.value {
            if index >= from && index < to {
                let newItem = List(value)
                if resultList == nil {
                    resultList = newItem
                } else {
                    resultListLast?.nextItem = newItem
                }
                resultListLast = newItem
            }
            index += 1
            current = current?.nextItem
        }
        return resultList
    }
}

