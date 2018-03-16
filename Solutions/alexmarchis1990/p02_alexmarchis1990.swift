import NinetyNineSwiftProblems

extension List {
    
    var penultimate: T? {
        get {
            if self.nextItem == nil {
                return nil
            } else if self.nextItem?.nextItem == nil {
                return self.value
            } else {
                return self.nextItem?.penultimate
            }
        }
    }

}
