import Foundation

func solution(_ n:Int) -> Int {
    var result: Int = 1
    while true {
        if (6 * result) % n == 0 {
            return result
        }
        result += 1
    }
}
