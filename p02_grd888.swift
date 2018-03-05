extension List {

    /// P02 (*) Find the last but one element of a linked list.
    /// - returns: T - second to last element of the linked list
    /// - author: Greg Delgado (grd888@gmail.com)
    /// - complexity: O(n)

    var penultimate: T? {
        guard let next = self.nextItem else {
            return nil
        }
        if next.nextItem == nil {
            return value
        }
        return next.penultimate
    }

}
