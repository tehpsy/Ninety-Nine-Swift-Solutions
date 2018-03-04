extension List {

    /// P03 (*) Find the Kth element of a linked list
    /// - returns: T - the value of the Kth element using subscripts
    /// - author: Greg Delgado (grd888@gmail.com)
    /// - complexity: O(n)

    subscript(index: Int) -> T? {
        var list = self
        for _ in 0..<index {
            if list.nextItem == nil {
                return nil
            }
            list = list.nextItem!
        }
        return list.value
    }

}
