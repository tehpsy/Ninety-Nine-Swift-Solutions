import NinetyNineSwiftProblems

extension List {
    var length: Int {
        get {
            if let next = self.nextItem {
                return 1 + next.length
            } else {
                return 1
            }
        }
    }
}
