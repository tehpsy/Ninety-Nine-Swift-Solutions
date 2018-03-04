extension List {
    /// P02 (*) Find the last but one element of a linked list.
    /// - returns: T - second to last element of the linked list
    /// - author: William Huang (willhuang08@gmail.com)
    /// - complexity: O(n)
    public var pennultimate: T {
        var currentNode = self
        while (currentNode.nextItem?.nextItem) != nil {
            currentNode = currentNode.nextItem!
        }
        return currentNode.value
    }
}
