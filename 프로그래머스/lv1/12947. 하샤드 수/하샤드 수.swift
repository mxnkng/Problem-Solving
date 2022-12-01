func solution(_ x:Int) -> Bool {
    let sum: Int = Array(String(x)).map{ Int(String($0)) ?? 0 }.reduce(0, +)
    return x % sum == 0 ? true : false
}