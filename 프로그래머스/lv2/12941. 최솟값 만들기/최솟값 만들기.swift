func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans: Int = 0
    var a = A.sorted(by: <)
    var b = B.sorted(by: >)
    for _ in 0..<A.count {
        ans += a.removeFirst() * b.removeFirst()
    }
    return ans
}