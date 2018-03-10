import NinetyNineSwiftProblems

extension List where T:Equatable {

    /// P06 (*) Determines whether a linked list is a palindrome.
    /// - returns: Bool
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    public func isPalindrome() -> Bool {

        let totalLength = self.length
        guard totalLength > 1 else { return true }

        var originalList: List<T> = self
        var reversedList: List<T> = self.reverse()

        let relevantLength = totalLength/2 // If odd length, we can ignore the centre number

        var i = 0
        repeat {

            if originalList.value != reversedList.value {
                return false
            }

            originalList = originalList.nextItem!
            reversedList = reversedList.nextItem!
            i += 1
        } while i < relevantLength

        return true
    }
}
