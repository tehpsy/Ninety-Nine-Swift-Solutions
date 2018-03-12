import NinetyNineSwiftProblems

extension List {
    
    subscript(index: Int) -> T? {
        get {
            if index == 0 {
                return self.value
            }
            else {
                return self.nextItem?[index-1]
            }
        }
    }
}
