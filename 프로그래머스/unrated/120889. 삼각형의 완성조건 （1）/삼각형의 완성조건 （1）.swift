import Foundation

func solution(_ sides:[Int]) -> Int {
    let sidesSorted: [Int] = sides.sorted(by: >)
    return sidesSorted[0] < sidesSorted[1] + sidesSorted[2] ? 1 : 2
}