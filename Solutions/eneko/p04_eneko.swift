import NinetyNineSwiftProblems

extension List {

    /// P04 (*) Find the number of elements of a list.
    /// - complexity: O(n)
    public var length: Int {
        var count = 1
        var current = self
        while let next = current.nextItem {
            count += 1
            current = next
        }
        return count
    }

}
