extension List {

    /// P01 (*) Find the last element of a linked list.
    /// - returns: T last element of the linked list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public var last: T {
        return nextItem?.last ?? value
    }
}
