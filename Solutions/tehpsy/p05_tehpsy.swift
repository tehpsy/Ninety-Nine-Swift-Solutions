import NinetyNineSwiftProblems

extension List {

    /// P05 (*) Reverses a linked list.
    /// - returns: New instance List<T> with values reversed
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func reverse() -> List<T> {

        var oldList: List<T>? = self
        var newList: List<T>? = nil
        var previousNewListItem: List<T>? = nil

        repeat {
            let newListItem: List<T> = List(oldList!.value)
            newListItem.nextItem = previousNewListItem
            newList = newListItem

            previousNewListItem = newListItem
            oldList = oldList!.nextItem
        } while oldList != nil

        return newList!
    }
}
