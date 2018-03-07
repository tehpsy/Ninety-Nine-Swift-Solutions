import NinetyNineSwiftProblems

extension List {

    /// P03 (*) Find the Kth element of a linked list.
    /// - returns: T - element at the given index of the linked list
    /// - author: Benjamin Lopez (contact@scotow.com)
    /// - complexity: O(n)
    subscript(index: Int) -> T? {
        return index == 0 ? value : nextItem?[index - 1]
    }

}
