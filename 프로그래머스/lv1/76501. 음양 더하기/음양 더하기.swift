import Foundation

func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    var sum: Int = 0
    var index: Int = 0
    
    for sign in signs {
        if sign == true {
            sum += absolutes[index]
        } else {
            sum -= absolutes[index]
        }
        index += 1
    }
    return sum
}