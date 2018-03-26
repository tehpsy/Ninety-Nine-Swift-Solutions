import NinetyNineSwiftProblems

extension List {
    /// P18 (*) Extract a list from a list between two indices
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    public func slice(from fromIndex: Int, to toIndex: Int) -> List? {
        /* indices are 0-indexed */
        let fromIndex = max(fromIndex, 0)
        let toIndex = min(toIndex, self.length)
        guard fromIndex < toIndex else { return nil }

        var head: List<T>?
        var tail: List<T>?
        var index = 0

        var current: List<T>? = self
        while let value = current?.value {

            if index >= fromIndex {
                let newItem = List(value)
                if head == nil {
                    head = newItem
                } else {
                    tail?.nextItem = newItem
                }
                tail = newItem
            }

            current = current?.nextItem
            index += 1

            if index >= toIndex {
                break
            }
        }

        return head
    }
}
