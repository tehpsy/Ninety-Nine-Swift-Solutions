import NinetyNineSwiftProblems

extension List {
    /// P23 (*) Select N random elements from a list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: Probably O(n2) because of call to `remove` inside for loop -- could be better...

    func randomSelect(amount amountToKeep: Int) -> List? {

        guard amountToKeep > 0 else { return nil }
        let amountToKeep = min(amountToKeep, self.length)

        var head: List<T>?
        var tail: List<T>?
        var runningList: List<T>? = self

        for _ in stride(from: 0, to: amountToKeep, by: 1) {

            let length = runningList!.length
            let randomIndex = randomInt(under: length)
            let newData = runningList!.remove(at: randomIndex)
            runningList = newData.rest

            let value = newData.removed!

            let newItem = List(value)
            if head == nil {
                head = newItem
            } else {
                tail?.nextItem = newItem
            }
            tail = newItem
        }

        return head!
    }
}
