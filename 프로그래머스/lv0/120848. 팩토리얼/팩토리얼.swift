import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 1
    var i: Int = 1
    while true{
        result *= i
        if result > n {
            return (i-1)
        }
        i += 1
    }
}