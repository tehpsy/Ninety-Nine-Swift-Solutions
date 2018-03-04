import NinetyNineSwiftProblems

extension List where T:Equatable {

    /// P06 (*) Find out whether a list is a palindrome.
    /// - complexity: O(2n) = O(n)
    public func isPalindrome() -> Bool {
        var stack: [T] = []
        var current: List? = self
        while let value = current?.value {
            stack.append(value)
            current = current?.nextItem
        }
        current = self
        while let value = current?.value {
            if value != stack.removeLast() {
                return false
            }
            current = current?.nextItem
        }
        return stack.count == 0
    }

}

