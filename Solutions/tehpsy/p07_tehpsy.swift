import NinetyNineSwiftProblems

extension List {

    /// P07 (*) Flattens a nested List
    /// - returns: New List containing the flattened values of the original List
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func flatten() -> List {

        //Create new list
        let newListHead: List<T>!
        if let list = value as? List<T> {
            newListHead = list.flatten()
        } else {
            newListHead = List(value)
        }

        //Move tail to end of chain
        var newListTail: List<T>? = newListHead.lastElement()

        var item: List<T>? = self.nextItem
        while item != nil {
            if let list = item?.value as? List<T> {
                let flattenedList = list.flatten()
                newListTail?.nextItem = flattenedList
                newListTail = flattenedList.lastElement()
            } else {
                newListTail?.nextItem = List(item!.value)
                newListTail = newListTail?.lastElement()
            }
            item = item!.nextItem
        }

        return newListHead
    }

    private func lastElement() -> List<T> {
        var item: List<T>? = self
        while item?.nextItem != nil {
            item = item?.nextItem
        }

        return item!
    }
}
