import Foundation

func solution(_ numbers:[Int]) -> Int {
    var sortednumbers = numbers.sorted()
    let max : Int = sortednumbers[sortednumbers.count - 1] * sortednumbers[sortednumbers.count - 2]
    
    return max
}