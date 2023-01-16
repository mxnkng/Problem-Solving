import Foundation

func solution(_ s:String) -> [Int] {
    var count = 0 // 이진 변환의 횟수
    var zeroCount = 0 //변환 과정에서 제거된 모든 0의 개수
    var str = s
    
    while str != "1"{
        zeroCount += str.filter{ $0 == "0"}.count
        str = str.filter{ $0 == "1"}
        str = String(str.count, radix: 2)
        count += 1
    }
    return [count, zeroCount]
}