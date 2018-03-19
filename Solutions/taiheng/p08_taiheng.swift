import NinetyNineSwiftProblems

extension List where T: Equatable {
    /**
     P08 (**) Eliminate consecutive duplicates of linked list elements.
     http://www.enekoalonso.com/projects/99-swift-problems/#p08
     - returns: A new list that removes duplicate elements
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func compress() -> List {
        let newHead: List = List(value)
        var newTail: List = newHead
        var iterator: List? = self
        
        while iterator != nil {
            defer { iterator = iterator?.nextItem }
            guard let nodeValue = iterator?.value,
                nodeValue != newTail.value else { continue }
            let newNode = List(nodeValue)
            newTail.nextItem = newNode
            newTail = newNode
        }
        
        return newHead
    }
}
