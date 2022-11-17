import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    if a % b == 0 { return 1 } // 정수인 경우
    
    var tempA = max(a,b)
    var tempB = min(a,b)
    
    while tempB != 0 {
        let r = tempA % tempB
        tempA = tempB
        tempB = r
    }
    // 분모의 소인수 구하기
    let gcd = tempA
    // 매개변수로 주어진 a, b의 최대공약수인 gcd로 b를 나누면 기약분수로 나타낸 분모가 된다
    let b = b / gcd
    // 분모의 소인수를 구한다(1 제외)
    var primefactors = (2...b).filter{ b % $0 == 0 }
    // 분모의 소인수 중 2와 5가 아닌 수가 존재하는지 확인하여 반환
    primefactors = primefactors.filter{ $0 % 2 != 0 }.filter{ $0 % 5 != 0 }
    return primefactors.isEmpty ? 1 : 2
}