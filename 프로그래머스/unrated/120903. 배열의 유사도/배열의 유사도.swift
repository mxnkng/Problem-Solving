import Foundation

func solution(_ s1:[String], _ s2:[String]) -> Int {
    var result : Int = 0
    for c1 in s1 {
        for c2 in s2{
            if c1 == c2 {
                result += 1
            }
        }
    }
    return result
}