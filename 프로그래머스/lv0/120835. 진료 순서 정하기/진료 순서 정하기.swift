import Foundation

func solution(_ emergency:[Int]) -> [Int] {
    let sortedEmergency: [Int] = emergency.sorted(by: >)
    var resultEmergency: [Int] = emergency
    for (index, value) in emergency.enumerated(){
        for (indexSorted, valueSorted) in sortedEmergency.enumerated(){
            if value == valueSorted {
                resultEmergency[index] = indexSorted + 1
                break
            }
        }
    }
    return resultEmergency
}