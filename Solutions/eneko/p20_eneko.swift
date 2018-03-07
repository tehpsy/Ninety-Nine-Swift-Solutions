import NinetyNineSwiftProblems

extension List {
    /// P20 (*) Remove the Kth element from a list.
    /// - complexity: O(n)
    public func remove(at position: Int) -> (rest: List?, removed: T?) {
        var resultList: List?
        var resultListLast: List?
        var current: List? = self
        var index = 0
        var item: T?
        while let value = current?.value {
            if index == position {
                item = value
            } else {
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
        return (resultList, item)
    }
}

