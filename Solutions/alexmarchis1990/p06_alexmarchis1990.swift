import NinetyNineSwiftProblems

extension List where T:Equatable {
    
    func isPalindrome() -> Bool {
        
        let loopLength = (self.length - -1)/2
        for i in 0...loopLength {
            if self[i] != self[self.length-i-1] {
                return false
            }
        }
        return true
    }
}
