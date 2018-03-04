    func isPrime() -> Bool {
        let isWhole: (Int) -> Bool = {(self % $0) == 0}
        let smallPrimes = [2, 3, 5]
        guard !smallPrimes.contains(self) else { return true }
        guard self > 1 else { return false }
        let maxDivisor = self / 2
        return !Array(2...maxDivisor).contains(where: isWhole)
    }
