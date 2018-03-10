import Foundation

extension TimeInterval {
    var secs: String {
        return String(format: "%0.3f seconds", self)
    }
}

extension Optional {
    var unwrapped: String {
        switch self {
        case .none:
            return "nil"
        case let .some(wrapped):
            return String(describing: wrapped)
        }
    }
}
