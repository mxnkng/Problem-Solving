import Foundation

func solution(_ numbers:[Int]) -> Double {
    var sum : Int = 0
    var avg : Double = 0
    for i in numbers {
        sum += i
    }
    avg = Double(sum) / Double(numbers.count)
    return avg
}