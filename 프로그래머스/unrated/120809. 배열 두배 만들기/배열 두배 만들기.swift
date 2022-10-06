import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    let resultArray = numbers.map({ (number: Int) -> Int in
    return number * 2
    })
    return resultArray
}