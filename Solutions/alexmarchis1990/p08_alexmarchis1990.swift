import NinetyNineSwiftProblems

extension List where T: Equatable {
    
    func compress() -> List {
        var nodeIterator = self
        var comparingNode = self
        let head = self
        var compressedList = head
        while let nextNode = nodeIterator.nextItem {
            if comparingNode.value != nextNode.value {
                compressedList.nextItem = nextNode
                compressedList = nextNode
                comparingNode = nextNode
            }
            else {
                compressedList.nextItem = nil
            }
            nodeIterator = nextNode
        }
        return head
    }
}
