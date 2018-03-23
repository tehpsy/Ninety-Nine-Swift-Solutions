import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P15 (*) Duplicate the elements of a linked list a specified number of times.
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func duplicate(times: Int) -> List {

        var resultHead: List<T>?
        var resultTail: List<T>?

        var current: List<T>? = self
        repeat {
            for _ in 0..<times {
                let newItem = List(current!.value)

                if resultHead == nil {
                    resultHead = newItem
                } else {
                    resultTail?.nextItem = newItem
                }

                resultTail = newItem
            }

            current = current?.nextItem
        } while current != nil

        return resultHead!
    }
}
