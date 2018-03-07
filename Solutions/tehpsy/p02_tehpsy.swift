import NinetyNineSwiftProblems

extension List {

    /// P02 (*) Find the penultimate element of a linked list.
    /// - returns: T penultimate element of the linked list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public var penultimate: T? {
        if let nextItem = nextItem {
            return nextItem.penultimate ?? value
        }

        return nil
    }
}
