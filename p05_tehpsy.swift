extension List {

    /// P05 (*) Reversed a linked list in-place.
    /// - returns: Void
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func reverse() {
        
        var reversedValues:[T] = []

        var list:List<T>? = self
        repeat {
            reversedValues.insert(list!.value, at: 0)
            list = list!.nextItem
        } while list != nil

        list = self
        for value in reversedValues {
            list?.value = value
            list = list?.nextItem
        }
    }
}
