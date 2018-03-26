import NinetyNineSwiftProblems

extension List {
    /// P20 (*) Remove an element from a list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    func remove(at position: Int) -> (rest: List?, removed: T?) {

        guard position >= 0 && position < length else { return (self, nil)  }

        var head: List<T>?
        var tail: List<T>?
        var removedValue: T?
        var index = 0

        var current: List<T>? = self
        while let value = current?.value {

            if index == position {
                removedValue = value
            } else {
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
        }

        return (head, removedValue)
    }
}
