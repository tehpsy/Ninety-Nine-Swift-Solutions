import NinetyNineSwiftProblems

extension List {
    func flatten() -> List<T> {
        var head = self
        var currentNode: List<T>
        if let nestedValue = self.value as? List<T> {
            head = nestedValue.flatten()
            var iterator = head
            while let it = iterator.nextItem {
                iterator = it
            }
            currentNode = iterator
        }
        else {
            currentNode = self
        }
        var nodeIterator = self
        while let nextNode = nodeIterator.nextItem {
            if let nestedNode = nextNode.value as? List<T> {
                let flattenedNode = nestedNode.flatten()
                currentNode.nextItem = flattenedNode
                currentNode = flattenedNode
            }
            else {
                currentNode.nextItem = nextNode
                currentNode = nextNode
            }
            nodeIterator = nextNode
        }
        return head
    }
}
