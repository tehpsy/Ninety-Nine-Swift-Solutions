static func gcd(_ x: Int, _ y: Int, _ z: Int) -> Int {
    var result = 0
    let mod = x > y ? x % y : y % x
    if (mod > 0) {
        result = gcd(y, mod, z)
    }
    return result == 0 ? mod : result
}
