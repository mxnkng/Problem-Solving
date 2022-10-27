import Foundation

func solution(_ n:Int) -> Int {
    var count: Int = 0
    // 1,2,3은 합성수가 아니다
    if n < 3 { return 0 }
    // 4부터 합성수인지 확인한다
    for i in 4...n{
        for j in 2...i-1{
            if i % j == 0{
                count += 1
                break
            }
        }
    }
    return count
}