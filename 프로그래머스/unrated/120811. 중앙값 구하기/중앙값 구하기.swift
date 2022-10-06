import Foundation

func solution(_ array:[Int]) -> Int {
    let sortedArray = array.sorted()
    let answer : Int
    if sortedArray.count % 2 == 0 {
        answer = sortedArray[sortedArray.count / 2 - 1]
    } else {
        answer = sortedArray[sortedArray.count / 2]
    }
    return answer
}