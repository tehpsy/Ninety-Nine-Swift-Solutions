import NinetyNineSwiftProblems

extension List {

    /// P02 (*) Find the last but one element of a linked list.
    /// - complexity: O(n)
    public var pennultimate: T? {
        var current = self
        while let next = current.nextItem {
            if next.nextItem == nil {
                return current.value
            }
            current = next
        }
        return nil
    }

}
