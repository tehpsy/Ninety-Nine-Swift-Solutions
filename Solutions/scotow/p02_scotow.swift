import NinetyNineSwiftProblems

extension List {

    /// P02 (*) Find the last but one element of a linked list.
    /// - returns: T - second to last element of the linked list
    /// - author: Benjamin Lopez (contact@scotow.com)
    /// - complexity: O(n)
    var penultimate: T? {
        return (nextItem != nil && nextItem?.nextItem == nil) ? value : nextItem?.penultimate
    }

}
