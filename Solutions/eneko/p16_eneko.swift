import NinetyNineSwiftProblems

extension List {
    /// P16 (**) Drop every Nth element from a list.
    /// - complexity: O(n)
    public func drop(every: Int) -> List? {
        if every < 2 {
            return nil
        }
        var resultList: List?
        var resultListLast: List?
        var current: List? = self
        var index = 1
        while let value = current?.value {
            if index % every != 0 {
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
