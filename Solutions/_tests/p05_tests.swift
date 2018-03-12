import NinetyNineSwiftProblems
import SolutionTester

extension SolutionTester {

    // P05 (*) Reverse a list.
    func testP05() {
        Test("Reverse a list") {
            verify(list: TestData.singleElementList, reversed: TestData.singleElementList.reverse())
            verify(list: TestData.twoElementList, reversed: TestData.twoElementList.reverse())
            verify(list: TestData.multiElementList, reversed: TestData.multiElementList.reverse())
            verify(list: TestData.veryLongList, reversed: TestData.veryLongList.reverse())
        }
    }

    private func verify(list: List<Int>, reversed: List<Int>) {
        assertEquals(list.length, reversed.length)
        let lastIndex = list.length - 1
        for i in 0...lastIndex {
            assertEquals(getAt(list: list, index: i), getAt(list: reversed, index: lastIndex - i))
        }
    }

    private func getAt<T>(list: List<T>, index: Int) -> T? {
        var count = 0
        var current = list
        while count < index {
            guard let next = current.nextItem else {
                return nil
            }
            count += 1
            current = next
        }
        return current.value
    }
}
