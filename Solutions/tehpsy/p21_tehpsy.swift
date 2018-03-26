import NinetyNineSwiftProblems

extension List {
    /// P21 (*) Insert an item at a point in the list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    func insert(at insertIndex: Int, value insertValue: T) -> List {

        // limit
        let insertIndex = insertIndex < 0 ? 0 : (insertIndex > length ? length : insertIndex)
        let currentLength = length

        var head: List<T>?
        var tail: List<T>?
        var current: List<T>? = self

        for index in 0..<(currentLength+1) /* New element is always inserted somewhere */ {

            let newItem: List<T>
            if index == insertIndex {
                newItem = List(insertValue)
            } else {
                newItem = List(current!.value)
            }

            if head == nil {
                head = newItem
            } else {
                tail?.nextItem = newItem
            }
            tail = newItem

            if index != insertIndex {
                current = current?.nextItem
            }
        }

        return head!
    }
}
