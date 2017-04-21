    var totient: Int {
        return Array(1...self).filter({self.isCoprimeTo(other: $0)}).count + 1
    }
