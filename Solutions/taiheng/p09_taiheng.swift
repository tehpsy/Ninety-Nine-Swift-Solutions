import NinetyNineSwiftProblems

extension List where T: Equatable {
    /**
     P09 (**) Pack consecutive duplicates of linked list elements into sub linked lists.
     http://www.enekoalonso.com/projects/99-swift-problems/#p09
     - returns: A new list which contains sublists of consecutively repeated elements
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func pack() -> List<List<T>> {
        var sublist: List<T> = List(value)
        var iterator: List<T>? = self.nextItem
        let packedList: List<List<T>> = List<List<T>>(sublist)
        var packedListTail: List<List<T>> = packedList
        
        while iterator != nil {
            defer { iterator = iterator?.nextItem }
            guard let currentValue = iterator?.value else { break }
            
            if currentValue == sublist.value {
                let newNode = List(currentValue)
                sublist.nextItem = newNode
                sublist = newNode
            } else {
                sublist = List(currentValue)
                let newSublistNode = List<List<T>>(sublist)
                packedListTail.nextItem = newSublistNode
                packedListTail = newSublistNode
            }
        }
        
        return packedList
    }
}
