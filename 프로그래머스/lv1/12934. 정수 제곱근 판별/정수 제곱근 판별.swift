import Foundation

func solution(_ n:Int64) -> Int64 {
    // 버림 함수 floor 사용
    return (sqrt(Double(n)) - floor(sqrt(Double(n))) > 0) ? -1 : Int64(sqrt(Double(n)) + 1) * Int64(sqrt(Double(n)) + 1)
}