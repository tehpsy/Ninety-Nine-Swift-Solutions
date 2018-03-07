extension List {

    /// P05 (*) Reverses a linked list in-place.
    /// - returns: Void
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func reverse() {

        var oldList: List<T>? = self
        var newList: List<T>? = self.reversed()

        //Update self to match the reversed list
        oldList = self
        repeat {
            oldList!.value    = newList!.value
            oldList!.nextItem = newList!.nextItem
            oldList = oldList!.nextItem
            newList = newList!.nextItem
        } while oldList != nil
    }

    /// P05 (*) Reverses a linked list.
    /// - returns: New instance List<T> of original List<T>, with values reversed
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func reversed() -> List<T> {

        var oldList: List<T>? = self
        var newList: List<T>? = nil
        var previousNewListItem: List<T>? = nil

        //Create the reversed list
        repeat {
            let newListItem: List<T> = List(oldList!.value)!
            newListItem.nextItem = previousNewListItem
            newList = newListItem

            previousNewListItem = newListItem
            oldList = oldList!.nextItem
        } while oldList != nil

        return newList!
    }
}
