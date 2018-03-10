import NinetyNineSwiftProblems

extension List {

    /// P03 (*) Find the Kth element of a linked list.
    /// - complexity: O(n)
    public subscript(index: Int) -> T? {
        var count = 0
        var current = self
        while count < index {
            guard let next = current.nextItem else {
                return nil
            }
            count += 1
            current = next
        }
        return current.value
    }

}
