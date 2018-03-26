import NinetyNineSwiftProblems

extension List {
    /// P16 (*) Drop every Nth element from the list (1-indexed)
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func drop(every indexToDrop: Int) -> List? {
        /* indexToDrop is 1-indexed */
        guard indexToDrop > 1 else { return nil }
        
        var resultHead: List<T>?
        var resultTail: List<T>?

        var elementCounter = 1
        var current: List<T>? = self
        repeat {
            defer { current = current?.nextItem }
            guard elementCounter != indexToDrop else {
                elementCounter = 1
                continue
            }

            let newItem = List(current!.value)

            if resultHead == nil {
                resultHead = newItem
            } else {
                resultTail?.nextItem = newItem
            }

            elementCounter += 1
            resultTail = newItem
        } while current != nil

        return resultHead!
    }
}
