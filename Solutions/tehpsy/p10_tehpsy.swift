import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P10 (*) Encodes a List
    /// - returns: New List containing tuples whose first element indicates the number of repetitions
    //             and second indicates the element to repeat
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func encode() -> List<(Int, T)> {

        typealias Data = (Int, T)

        var resultHead: List<Data>?
        var resultTail: List<Data>?
        var sublistHead: List<T>?
        var sublistTail: List<T>?

        var current: List<T>? = self
        repeat {
            let newItem = List(current!.value)

            if sublistHead == nil {
                sublistHead = newItem
            } else {
                sublistTail?.nextItem = newItem
            }

            sublistTail = newItem

            if (current!.nextItem == nil) || (current!.nextItem?.value != sublistTail?.value) {

                let newItem = List<Data>(Data(sublistHead!.length, sublistTail!.value))

                if resultHead == nil {
                    resultHead = newItem
                } else {
                    resultTail?.nextItem = newItem
                }

                resultTail = newItem

                sublistHead = nil
                sublistTail = nil
            }

            current = current?.nextItem
        } while current != nil

        return resultHead!
    }
}
