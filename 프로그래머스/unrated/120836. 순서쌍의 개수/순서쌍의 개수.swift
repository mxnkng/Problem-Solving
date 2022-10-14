import Foundation

func solution(_ n:Int) -> Int {
    var count: Int = 0
    var i: Int = 1
    while i * i <= n {
        if n % i == 0 {
            if i * i == n {
                // n이 i의 제곱인 경우는 순서쌍이 (i,i) 한 개
                count += 1
            } else{
                // i가 n의 제곱근이 아닌 경우는 순서쌍이 두 개씩 생긴다
                count += 2
            }
        }
        i += 1
    }
    return count
}