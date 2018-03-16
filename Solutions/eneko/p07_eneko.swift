import NinetyNineSwiftProblems

extension List {
    /// P07 (*) Flatten a nested list structure.
    /// - complexity: O(n)
    public func flatten() -> List {
        var resultList: List!
        var resultListLast: List!
        var current: List? = self
        while let value = current?.value {
            switch value {
            case let list as List:
                let childrenList = list.flatten()
                var currentChild: List! = childrenList
                repeat {
                    let newItem = List(currentChild.value)
                    if resultList == nil {
                        resultList = newItem
                    } else {
                        resultListLast.nextItem = newItem
                    }
                    resultListLast = newItem
                    currentChild = currentChild.nextItem
                } while currentChild != nil
            default:
                let newItem = List(value)
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
