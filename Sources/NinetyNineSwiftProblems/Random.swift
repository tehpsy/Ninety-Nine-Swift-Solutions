import Foundation

public func randomInt(under limit: Int) -> Int {
    #if os(Linux)
        srandom(UInt32(time(nil)))
        return random() % limit
    #else
        return Int(arc4random_uniform(UInt32(limit)))
    #endif
}
