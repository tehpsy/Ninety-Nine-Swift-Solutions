import NinetyNineSwiftProblems

extension List {
    
    func reverse() -> List<T> {
        
        var arr:[T] = []
        arr.append(self.value)
        var currentNode = self.nextItem
        
        while let cn = currentNode {
            arr.insert(cn.value, at: 0)
            currentNode = cn.nextItem
        }
        
        return List<T>.init(arr)!
    }
}
