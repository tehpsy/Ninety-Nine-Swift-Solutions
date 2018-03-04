extension List {

    /// P05 (*) Reverse a linked list
    /// - returns: List a reversed copy of the initial liked list
    /// - author: Christopher Fonseka (christopher.fonseka@googlemail.com)
    /// - complexity: O(n)
    public func reversed() -> List {
        let head = self
        let tail = self.nextItem
        head.nextItem = nil
        return reversing(head: head, tail: tail)
    }

    private func reversing(head: List, tail: List?) -> List {
        guard let tail = tail else { return head }

        let newTail = tail.nextItem
        let newHead = tail
        newHead.nextItem = head

        return reversing(head: newHead, tail: newTail)
    }

}
