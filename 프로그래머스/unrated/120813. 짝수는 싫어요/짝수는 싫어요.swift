import Foundation

func solution(_ n:Int) -> [Int] {
    var resultArray : [Int] = []
    for i in 1...n {
        if i % 2 == 1 {
            resultArray.append(i)
        }
    }
    return resultArray
}