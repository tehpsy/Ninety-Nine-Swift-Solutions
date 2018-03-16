import NinetyNineSwiftProblems

extension List where T: Equatable {
    /**
     P06 (*) Find out whether a linked list is a palindrome.
     http://www.enekoalonso.com/projects/99-swift-problems/#p06
     - returns: Bool indicating whether list is the same value forwards or backwards
     - author: Tai Heng (github: taiheng)
     - complexity: O(n)
     */
    func isPalindrome() -> Bool {
        var i: List<T>? = self
        var j: List<T>? = reverse()
        var isPalindrome = true
        
        while i != nil && j != nil {
            defer {
                i = i?.nextItem
                j = j?.nextItem
            }
            
            if i?.value != j?.value {
                isPalindrome = false
                break
            }
        }
        
        return isPalindrome
    }
}
