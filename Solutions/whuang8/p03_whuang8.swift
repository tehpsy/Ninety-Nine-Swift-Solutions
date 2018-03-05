import NinetyNineSwiftProblems

extension List {
    /// P03 (*) Find the Kth element of a linked list.
    /// - returns: T - element at the given index of the linked list
    /// - author: William Huang (willhuang08@gmail.com)
    /// - complexity: O(n)
    public subscript(index: Int) -> T? {
        var currentNode = self
        for _ in 0..<index {
            guard let nextNode = currentNode.nextItem else {
                return nil
            }
            currentNode = nextNode
        }
        return currentNode.value
    }
}
