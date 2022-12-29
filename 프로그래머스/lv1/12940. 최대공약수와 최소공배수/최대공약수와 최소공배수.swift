func solution(_ n:Int, _ m:Int) -> [Int] {
    // 두 수를 입력받아 두 수의 최대공약수와 최소공배수를 반환하는 함수
    var a = max(n, m)
    var b = min(n, m)
    
    // 유클리드 호제법 사용
    while b > 0 {
        let r = a % b
        a = b
        b = r
    }
    
    let gcd = a
    
    return [gcd, (n * m / gcd)]
}