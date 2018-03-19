import NinetyNineSwiftProblems

extension List {
    //Last element in list
    var last: T? {
        get {
            if self.nextItem == nil {
                return self.value
            }
            else {
                return self.nextItem?.last
            }
        }
    }
}

