import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P10 (*) Encodes a List
    /// - returns: New List containing tuples whose first element indicates the number of repetitions
    //             and second indicates the element to repeat
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func encode() -> List<(Int, T)> {

        let packedList = pack()
        typealias Data = (Int, T)

        var resultHead: List<Data>?
        var resultTail: List<Data>?

        var current: List<List<T>>? = packedList
        repeat {
            let newItem = List<Data>(Data(current!.value.length, current!.value.value))

            if resultHead == nil {
                resultHead = newItem
            } else {
                resultTail?.nextItem = newItem
            }

            resultTail = newItem
            current = current?.nextItem
        } while current != nil

        return resultHead!
    }
}
