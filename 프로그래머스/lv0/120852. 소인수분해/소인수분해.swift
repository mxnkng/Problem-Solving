import Foundation

func solution(_ n:Int) -> [Int] {
    var number: Int = n
    var primeFactors: Array<Int> = []
    // n의 제곱근까지만 확인했을 때 나누어 떨어지는 소인수가 없으면 소수이므로 n을 반환해야 한다.
    if n == 2 || n == 3  { return [n] }
    for i in 2...Int(sqrt(Double(n))){
        while number % i == 0{
            if !primeFactors.contains(i) {
                primeFactors.append(i)
            }
            number /= i
        }
    }
    if number != 1 {
        primeFactors.append(number)
    }
    primeFactors.sort(by: <)
    return primeFactors.count == 0 ? [n] : primeFactors
}