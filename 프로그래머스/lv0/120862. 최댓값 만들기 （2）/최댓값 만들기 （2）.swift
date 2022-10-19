import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortedNumbers: [Int] = numbers.sorted(by: >)
    var frontResult: Int = sortedNumbers[0] * sortedNumbers[1]
    var lastResult: Int = sortedNumbers[sortedNumbers.count - 1] * sortedNumbers[sortedNumbers.count - 2]
    
    return frontResult > lastResult ? frontResult : lastResult
}