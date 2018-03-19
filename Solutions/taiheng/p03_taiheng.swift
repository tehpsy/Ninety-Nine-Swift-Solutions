import NinetyNineSwiftProblems

extension List {
    /**
     P03 (*) Find the Kth element of a linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p03
     - note: returns nil if index is invalid
     - returns: T at given index
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    subscript(index: Int) -> T? {
        guard index >= 0 else { return nil }
        guard index > 0 else { return value }
        guard let nextItem = nextItem else { return nil }
        return nextItem[index - 1]
    }
}
