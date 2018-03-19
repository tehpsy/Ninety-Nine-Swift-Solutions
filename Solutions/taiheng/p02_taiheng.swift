import NinetyNineSwiftProblems

extension List {
    /**
     P02 (*) Find the last but one element of a linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p02
     - note: if list has less than 2 elements, nil is returned
     - returns: T second last element of the linked list
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    var penultimate: T? {
        guard nextItem != nil else { return nil }
        guard nextItem?.nextItem != nil else { return value }
        return nextItem?.penultimate
    }
}
