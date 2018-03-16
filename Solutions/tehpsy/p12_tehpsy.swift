import NinetyNineSwiftProblems

extension List {

    /// P12 (*) Decodes a List
    /// - returns: New List that is unwrapped version of an encoded list
    /// - author: James Baxter (jimmehb@gmail.com)
    /// - complexity: O(n)
    func decode() -> List<String> {

        typealias Data = (Int, String)

        var resultHead: List<String>?
        var resultTail: List<String>?

        var current: List? = self
        repeat {
            if let value = current?.value as? (Int, String) {
                for _ in stride(from: 0, to: value.0, by: 1) {
                    let newItem = List<String>(value.1)
                    if resultHead == nil {
                        resultHead = newItem
                    } else {
                        resultTail?.nextItem = newItem
                    }
                    resultTail = newItem
                }
            }

            current = current?.nextItem
        } while current != nil

        return resultHead!
    }
}
