    func isCoprimeTo(other: Int) -> Bool {
        return Int.gcd(self, other, 0) == 1
    }
