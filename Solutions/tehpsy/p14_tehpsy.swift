import NinetyNineSwiftProblems

extension List where T: Equatable {

    /// P14 (*) Duplicate the elements of a linked list.
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func duplicate() -> List {

        var resultHead: List<T>?
        var resultTail: List<T>?

        var current: List<T>? = self
        repeat {
            let repeatCount = 2
            for _ in 0..<repeatCount {
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
