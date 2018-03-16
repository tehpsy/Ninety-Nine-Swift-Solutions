import NinetyNineSwiftProblems

extension List where T: Equatable {
    /**
     P10 (*) Run-length encoding of a linked list.
     http://www.enekoalonso.com/projects/99-swift-problems/#p10
     - discussion: Compresses a single dimension list into a list of tuples indicating the frequency of consecutive elements
     - returns: A run length encoded list
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func encode() -> List<(Int, T)> {
        let compacted = pack()
        var iterator: List<List<T>>? = compacted.nextItem
        var encodedHead: List<(Int, T)> = List<(Int, T)>((compacted.value.length, compacted.value.value))
        var encodedTail: List<(Int, T)> = encodedHead
        
        while iterator != nil {
            defer { iterator = iterator?.nextItem }
            
            guard let currentNode = iterator else { break }
            let newNode = List<(Int, T)>((currentNode.value.length, currentNode.value.value))
            encodedTail.nextItem = newNode
            encodedTail = newNode
        }
        
        return encodedHead
    }
}
