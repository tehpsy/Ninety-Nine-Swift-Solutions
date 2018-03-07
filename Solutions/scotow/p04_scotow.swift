import NinetyNineSwiftProblems

extension List {

    /// P04 (*) Find the number of elements of a linked list.
    /// - returns: Int the length of the linked list
    /// - author: Benjamin Lopez (contact@scotow.com)
    /// - complexity: O(n)
    var length: Int {
        return 1 + (nextItem?.length ?? 0)
    }

}
