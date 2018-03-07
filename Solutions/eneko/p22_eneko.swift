import NinetyNineSwiftProblems

extension List {
    /// P22 (*) Create a list containing all integers within a given range.
    /// - complexity: O(n)
    public class func range(from: Int, to: Int) -> List<Int> {
        var resultList: List<Int>!
        var resultListLast: List<Int>!
        for i in from...to {
            let newItem = List<Int>(i)
            if resultList == nil {
                resultList = newItem
            } else {
                resultListLast.nextItem = newItem
            }
            resultListLast = newItem
        }
        return resultList
    }
}

