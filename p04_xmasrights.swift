extension List {
    /// P04 (*) Find the number of elements of a linked list.
    /// - returns: Int the length of the linked list
    /// - author: Christopher Fonseka (chris.fonseka@googlemail.com)
    /// - complexity: O(n)
    
    public var length: Int
    {
        guard let next = nextItem else { return 1 }
        return 1 + next.length
    }
}
