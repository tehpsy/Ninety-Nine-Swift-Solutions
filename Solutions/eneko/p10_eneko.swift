import NinetyNineSwiftProblems

extension List where T: Equatable {
    /// P10 (*) Run-length encoding of a list.
    /// - complexity: O(n)
    public func encode() -> List<(Int, T)> {
        let packed = pack()
        var resultList: List<(Int, T)>!
        var resultListLast: List<(Int, T)>!
        var current: List<List<T>>? = packed
        while let value = current?.value {
            let newItem = List<(Int, T)>((value.length, value.value))
            if resultList == nil {
                resultList = newItem
            } else {
                resultListLast.nextItem = newItem
            }
            resultListLast = newItem
            current = current?.nextItem
        }
        return resultList
    }
}
