import Foundation
// 조건에서 array의 길이가 홀수이므로 짝수인 경우를 고려하지 않아도 된다!
// 코드 수정
func solution(_ array:[Int]) -> Int {
    let sortedArray = array.sorted()
    let answer = sortedArray[sortedArray.count / 2]
    return answer
}