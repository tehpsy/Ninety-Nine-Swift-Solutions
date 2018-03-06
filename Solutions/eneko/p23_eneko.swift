import Foundation
import NinetyNineSwiftProblems

extension List {
    /// P23 (**) Extract a given number of randomly selected elements from a list.
    /// - complexity: O(n)
    public func randomSelect(amount: Int) -> List {
        var resultList: List!
        var resultListLast: List!
        var count = 0
        var list: List? = self
        while count < amount {
            let length = list?.length ?? 0
            let index = randomInt(under: length)
            let result = list?.remove(at: index)
            list = result?.0
            guard let value = result?.1 else {
                break
            }
            let newItem = List(value)
            if resultList == nil {
                resultList = newItem
            } else {
                resultListLast.nextItem = newItem
            }
            resultListLast = newItem
            count += 1
        }
        return resultList
    }
}

