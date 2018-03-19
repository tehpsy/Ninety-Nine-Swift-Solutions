import NinetyNineSwiftProblems

extension List {
    /**
     P01 (*) Find the last element of a linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p01
     - returns: T last element of the linked list
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    var last: T? {
        return nextItem?.last ?? self.value
    }
}
