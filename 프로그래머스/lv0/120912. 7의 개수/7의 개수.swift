import Foundation

func solution(_ array:[Int]) -> Int {
    // 매개변수로 들어오는 정수형 배열을 문자열로 변환하고 다 이어 붙인 다음에 하나씩 떼서 7인지 확인하고 카운트한다
    var stringArray : [String] = array.map{ String($0) }
    return stringArray.reduce("",+).map{ String($0)}.filter{ $0 == "7"}.count
}