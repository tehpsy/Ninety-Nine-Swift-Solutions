import NinetyNineSwiftProblems

extension List where T: Equatable {
    /// P13 (**) Run-length encoding of a list (direct solution).
    /// - complexity: O(n)
    public func encodeDirect() -> List<(Int, T)> {
        var resultList: List<(Int, T)>!
        var resultListLast: List<(Int, T)>!
        var current: List? = self
        var count = 1
        while let value = current?.value {
            if value == current?.nextItem?.value {
                count += 1
            } else {
                let newItem = List<(Int, T)>((count, value))
                if resultList == nil {
                    resultList = newItem
                } else {
                    resultListLast.nextItem = newItem
                }
                resultListLast = newItem
                count = 1
            }
            current = current?.nextItem
        }
        return resultList
    }
}

