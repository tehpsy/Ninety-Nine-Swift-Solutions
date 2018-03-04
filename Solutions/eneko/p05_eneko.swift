import NinetyNineSwiftProblems

extension List {

    /// P05 (*) Reverse a list.
    /// - complexity: O(n)
    public func reverse() -> List {
        var head = self
        let current = head
        while let next = current.nextItem {
            current.nextItem = next.nextItem
            next.nextItem = head
            head = next
        }
        return head
    }

}
