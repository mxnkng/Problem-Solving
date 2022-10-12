import Foundation

func solution(_ n:Int) -> [Int] {
    //시퀀스를 사용해서 1부터 n까지의 정수들이 담긴 배열 선언
    let array: [Int] = Array(1...n)
    return array.filter{ n % $0 == 0}
}