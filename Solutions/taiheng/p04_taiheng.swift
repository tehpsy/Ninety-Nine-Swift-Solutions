import NinetyNineSwiftProblems

extension List {
    /**
     P04 (*) Find the number of elements of a linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p04
     - note: returns nil if index is invalid
     - returns: Int length of linked list
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    var length: Int {
        return 1 + (nextItem?.length ?? 0)
    }
}
