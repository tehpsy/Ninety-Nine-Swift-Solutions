# Ninety-Nine-Swift-Solutions
Community solutions to the Ninety-Nine Swift Problems (http://enekoalonso.com/projects/99-swift-problems)

## Submitting a Solution
To submit your solution please fork this repository and add the files (one per problem) containing your solution. Make sure you name your files in the format `pXX_username.swift`, where `XX` is the problem number and `username` is your GitHub username in lower-case.

## Example Solution

Filename: `p01_eneko.swift`:

```swift
extension List {

    /// P01 (*) Find the last element of a linked list.
    /// - returns: T last element of the linked list
    /// - author: Eneko Alonso (eneko.alonso@gmail.com)
    /// - complexity: O(n)
    public var last: T {
        var current = self
        while let next = current.nextItem {
            current = next
        }
        return current.value
    }

}
```

