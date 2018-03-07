import NinetyNineSwiftProblems

extension List {

    /// P03 (*) Find the nth element of a linked list.
    /// - returns: T nth element of the linked list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public subscript(index: Int) -> T? {
        guard index >= 0 else { return nil }
        return (index == 0) ? value : nextItem?[index-1]
    }
}
