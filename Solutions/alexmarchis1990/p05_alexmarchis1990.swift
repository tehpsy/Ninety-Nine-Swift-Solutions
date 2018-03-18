import NinetyNineSwiftProblems

extension List {
    
    func reverse() -> List<T> {
        var newList = self
        let currentNode = self
        while let nextNode = currentNode.nextItem {
            currentNode.nextItem = nextNode.nextItem
            nextNode.nextItem = newList
            newList = nextNode
        }
        return newList
    }
}
