import Foundation

func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    var resultArray: [Int] = numbers
    if direction == "left" {
        resultArray.append(resultArray.removeFirst())
    } else{
        resultArray.insert(resultArray.removeLast(), at: 0)
    }
    return resultArray
}