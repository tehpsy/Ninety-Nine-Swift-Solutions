import NinetyNineSwiftProblems

extension List {
    /// P19 (*) Rotate a list to the left
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    public func rotate(amount: Int) -> List {
        /* indices are 0-indexed */

        // Wrap amount without using a time-unbounded while-loop
        let amount = (amount % length + length) % length

        let lists = self.split(at: amount)
        let leftList = lists.left
        let rightList = lists.right

        //Connect the two lists
        if let rightList = rightList {
            rightList.lastElement().nextItem = leftList
            return rightList
        } else {
            return leftList!
        }
    }

    private func lastElement() -> List<T> {
        var item: List<T>? = self
        while item?.nextItem != nil {
            item = item?.nextItem
        }

        return item!
    }
}
