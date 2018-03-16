import NinetyNineSwiftProblems

extension List {
    /// P21 (*) Insert an element at a given position into a list.
    /// - complexity: O(n)
    public func insert(at index: Int, value: T) -> List {
        var resultList: List!
        var resultListLast: List!
        var current: List? = self
        var currentIndex = 1
        while let val = current?.value {
            let newItem = List(val)
            if resultList == nil {
                resultList = newItem
            } else {
                resultListLast?.nextItem = newItem
            }
            resultListLast = newItem
            if currentIndex == index {
                newItem.nextItem = List(value)
                resultListLast = resultListLast.nextItem
            }
            currentIndex += 1
            current = current?.nextItem
        }
        return resultList
    }
}
