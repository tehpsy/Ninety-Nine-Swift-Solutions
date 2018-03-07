import NinetyNineSwiftProblems

extension List {

    /// P04 (*) Find the length of a linked list.
    /// - returns: Int length of the linked list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public var length: Int {
        return (nextItem?.length ?? 0) + 1
    }
}

