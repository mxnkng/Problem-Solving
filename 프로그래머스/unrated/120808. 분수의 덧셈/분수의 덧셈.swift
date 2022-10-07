import Foundation

func solution(_ denum1:Int, _ num1:Int, _ denum2:Int, _ num2:Int) -> [Int] {
    /*
     1. 분자와 분모를 통분해서 두 분수의 합을 구한다.
     2. 1에서 구한 분수에서 분자와 분모의 최대 공약수(gcd)를 유클리드 호제법을 사용해서 구한다
     3. 기약분수로 나타내어야 하기 때문에 구한 최대 공약수로 1에서 구한 분수의 분자와 분모를 나눠서 정답 배열에 각각 담아준다
     */
    let denum3 : Int = denum1 * num2 + denum2 * num1
    let num3 : Int = num1 * num2
    
    var a : Int = max(denum3, num3)
    var b : Int = min(denum3, num3)
    
    let gcd : Int
    var resultArray : [Int] = []
    
    // 최대공약수를 구하는 유클리드 호제법
    while b != 0 {
        let r = a % b
        a = b
        b = r
    }
    gcd = a
    
    resultArray.append(denum3 / gcd)
    resultArray.append(num3 / gcd)
        
    return resultArray
}
