import Foundation

func solution(_ score:[[Int]]) -> [Int] {
    let avgArray = score.map{ Double($0[0] + $0[1]) / 2 }
    let avgSorted = avgArray.sorted(by: >)
    var resultArray: [Int] = []
    for avg in avgArray{
        resultArray.append((avgSorted.firstIndex(of: avg) ?? 0) + 1)
    }
    return resultArray
}