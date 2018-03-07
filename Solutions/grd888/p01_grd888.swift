import NinetyNineSwiftProblems

extension List {

    /// P01 (*) Find the last element of a linked list.
    /// - returns: T last element of the linked list
    /// - author: Greg Delgado (grd888@gmail.com)
    /// - complexity: O(n)

    public var last: T {
        guard let element = self.nextItem else {
            return self.value
        }
        return element.last
    }

}
