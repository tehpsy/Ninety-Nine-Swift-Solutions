import NinetyNineSwiftProblems

extension List {
    /**
     P07 (**) Flatten a nested linked list structure.
     http://www.enekoalonso.com/projects/99-swift-problems/#p07
     - returns: List which has been flattened from the receiver
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func flatten() -> List {
        let newHead: List = (value as? List)?.flatten() ?? List(value)
        var indexPointer: List? = self.nextItem
        var newTail: List? = newHead
        
        while indexPointer != nil {
            defer { indexPointer = indexPointer?.nextItem }
            // Iterate to the end of the new list
            while newTail?.nextItem != nil {
                newTail = newTail?.nextItem
            }
            
            // Add the element from the receiver to the new list, flattening the children as necessary
            if let subList = indexPointer?.value as? List {
                newTail?.nextItem = subList.flatten()
            } else if let newValue = indexPointer?.value {
                newTail?.nextItem = List(newValue)
            } else {
                break
            }
        }
        
        return newHead
    }
}
