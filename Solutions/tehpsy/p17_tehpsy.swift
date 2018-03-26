import NinetyNineSwiftProblems

extension List {
    /// P17 (*) Split a linked list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    public func split(at index: Int) -> (left: List?, right: List?) {
        /* index is 1-indexed */
        guard index >= 0 else { return (nil, nil) }
        guard index > 0 else { return (nil, self) }
        guard index <= self.length else { return (self, nil) }

        var leftHead: List<T>?
        var leftTail: List<T>?
        var rightHead: List<T>?
        var rightTail: List<T>?
        var elementCounter = 0

        var current: List<T>? = self
        repeat {

            let newItem = List(current!.value)

            if elementCounter < index {
                if leftHead == nil {
                    leftHead = newItem
                } else {
                    leftTail?.nextItem = newItem
                }
                leftTail = newItem
            } else {
                if rightHead == nil {
                    rightHead = newItem
                } else {
                    rightTail?.nextItem = newItem
                }
                rightTail = newItem
            }

            current = current?.nextItem
            elementCounter += 1

        } while current != nil

        return (leftHead!, rightHead!)
    }
}
