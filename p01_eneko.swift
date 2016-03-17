extension List {

    /// P01 (*) Find the last element of a linked list.
    /// - returns: T last element of the linked list
    /// - author: Eneko Alonso (eneko.alonso@gmail.com)
    /// - complexity: O(n)
    public var last: T {
        var current = self
        while let next = current.nextItem {
            current = next
        }
        return current.value
    }

}
