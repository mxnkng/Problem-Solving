import Foundation

func solution(_ n:Int) -> Int {
    var number :Int = n
    var sum : Int = 0
    while number > 0 {
        sum += number % 10
        number /= 10
    }
    return sum
}