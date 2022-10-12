import Foundation

func solution(_ array:[Int]) -> [Int] {
    //sorted 함수 사용해서 매개변수 배열을 내림차순으로 정렬한 뒤 0번째 인덱스에 접근하면 최댓값이다
    let maxValue : Int = array.sorted(by : >)[0]
    // 문제에서 매개변수 배열에 중복된 숫자가 없다고 했으므로 firstIndex 함수로 최댓값의 인덱스를 찾을 수 있다.
    if let maxIndex = array.firstIndex(of : maxValue)    {
        return [maxValue, maxIndex]
    }
    
    return []
}