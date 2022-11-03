import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var aArray = Array(A)
    var count: Int = 0
    for _ in 0..<A.count{
        if aArray == Array(B) {
            return count
        }
        count += 1
        aArray.insert(aArray.popLast()!, at: 0)
    }
    return -1
}