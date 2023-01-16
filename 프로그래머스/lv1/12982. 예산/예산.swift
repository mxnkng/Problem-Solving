import Foundation

func solution(_ d:[Int], _ budget:Int) -> Int {
    let sortedArray = d.sorted(by: <)
    var sum = 0,result = 0
    for value in sortedArray{
        sum += value
        if sum > budget {
            return result
        }
        result += 1
    }
    return result
}