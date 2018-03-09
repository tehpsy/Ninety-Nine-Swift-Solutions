import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P09 (*) Packs a List
    /// - returns: New List with duplicate elements packed into Lists
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func pack() -> List<List<T>> {

        var resultHead: List<List<T>>?
        var resultTail: List<List<T>>?
        var sublistHead: List<T>?
        var sublistTail: List<T>?

        var current: List<T>? = self
        repeat {
            if sublistHead == nil {
                sublistHead = List(current!.value)
                sublistTail = sublistHead
            } else {
                sublistTail?.nextItem = List(current!.value)
                sublistTail = sublistTail?.nextItem
            }

            if (current!.nextItem == nil) || (current!.nextItem?.value != sublistTail?.value) {

                if resultHead == nil {
                    resultHead = List<List<T>>(sublistHead!)
                    resultTail = resultHead
                } else {
                    resultTail?.nextItem = List<List<T>>(sublistHead!)
                    resultTail = resultTail?.nextItem
                }

                sublistHead = nil
                sublistTail = nil
            }

            current = current?.nextItem
        } while current != nil

        return resultHead!
    }
}
