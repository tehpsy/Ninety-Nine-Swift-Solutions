import NinetyNineSwiftProblems

extension List {
    /**
     P05 (*) Reverse a linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p05
     - note: does not modify provided linked list
     - returns: List<T> reversed list of receiver
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func reverse() -> List {
        var lastNode: List<T>?
        var currentNode: List<T>?
        var listTraversalPointer: List<T>? = self
        
        while listTraversalPointer != nil {
            defer { listTraversalPointer = listTraversalPointer?.nextItem }
            guard let currentValue = listTraversalPointer?.value else { break }
            currentNode = List(currentValue)
            currentNode?.nextItem = lastNode
            lastNode = currentNode
        }
        
        return lastNode!
    }
}
