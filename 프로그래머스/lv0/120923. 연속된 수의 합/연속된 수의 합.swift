import Foundation

func solution(_ num:Int, _ total:Int) -> [Int] {
    /*
    테스트케이스 입출력 예시
        3, 3+1, 3+2
        1, 1+1, 1+2, 1+3, 1+4
     */
    if num == 1 { return [total] }
    let startNumber: Int = (total - (1...(num-1)).reduce(0, +)) / num
    var resultArray: [Int] = []
    for i in 0..<num {
        resultArray.append(startNumber + i)
    }
    return resultArray
}