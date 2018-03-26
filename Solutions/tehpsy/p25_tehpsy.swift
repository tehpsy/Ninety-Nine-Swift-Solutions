import NinetyNineSwiftProblems

extension List {
    /// P25 (*)
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)

    func randomPermute() -> List {
        return self.randomSelect(amount: length)!
    }
}
