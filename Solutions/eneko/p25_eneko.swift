import NinetyNineSwiftProblems

extension List {
    /// P25 (*) Generate a random permutation of the elements of a list.
    public func randomPermute() -> List {
        return randomSelect(amount: length)
    }
}

