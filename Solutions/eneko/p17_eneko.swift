import NinetyNineSwiftProblems

extension List {
    /// P17 (*) Split a list into two parts.
    /// - complexity: O(n)
    public func split(at splitIndex: Int) -> (left: List?, right: List?) {
        var left: List?
        var leftLast: List?
        var right: List?
        var rightLast: List?
        var index = 0
        var current: List? = self
        while let value = current?.value {
            let newItem = List(value)
            if index < splitIndex {
                if left == nil {
                    left = newItem
                } else {
                    leftLast?.nextItem = newItem
                }
                leftLast = newItem
            } else {
                if right == nil {
                    right = newItem
                } else {
                    rightLast?.nextItem = newItem
                }
                rightLast = newItem
            }
            index += 1
            current = current?.nextItem
        }
        return (left, right)
    }
}

