import Foundation

func solution(_ left:Int, _ right:Int) -> Int {
    var sum: Int = 0
    // 약수의 개수가 홀수인 수는 제곱 수
    for i in left...right{
        if (sqrt(Double(i)) - floor(sqrt(Double(i)))) > 0 {
            // 제곱 수가 아닌 경우 -> 약수의 개수가 짝수인 경우
            sum += i
        } else {
            sum -= i
        }
    }
    return sum
}