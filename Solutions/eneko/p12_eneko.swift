import NinetyNineSwiftProblems

extension List {
    /// P12 (**) Decode a run-length encoded list.
    /// - complexity: O(n)
    public func decode() -> List<String> {
        var resultList: List<String>!
        var resultListLast: List<String>!
        var current: List? = self
        while let value = current?.value as? (Int, String) {
            for _ in 1...value.0 {
                let newItem = List<String>(value.1)
                if resultList == nil {
                    resultList = newItem
                } else {
                    resultListLast.nextItem = newItem
                }
                resultListLast = newItem
            }
            current = current?.nextItem
        }
        return resultList
    }
}

