extension List {

    /// P01 (*) Find the last element of a linked list.
    /// - returns: T last element of the linked list
    /// - author: Benjamin Lopez (contact@scotow.com)
    /// - complexity: O(n)
    var last: T {
        return nextItem?.last ?? value
    }

}
