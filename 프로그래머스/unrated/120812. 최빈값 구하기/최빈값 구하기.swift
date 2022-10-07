import Foundation

func solution(_ array:[Int]) -> Int {
    var countDictionary : [Int:Int] = [:]
    var result : Int = -1
    
    if array.count == 1 {
        // 입력 받은 배열의 요소가 한 개이면 해당 요소 출력
        result = array[0]
    }
    else {
        // 입력 받은 배열의 요소가 2개 이상인 경우
        for i in array{
            if countDictionary.keys.contains(i) {
                // 기존에 카운트 했던 숫자는 기존 카운트에 +1을 해준다
                if let oldValue = countDictionary[i] {
                    countDictionary.updateValue(oldValue + 1, forKey: i)
                }
            }
            else{
                // 처음 카운트하는 숫자는 1로 카운트한다
                countDictionary[i] = 1
            }
        }
        // value 값(카운트 수)을 기준으로 오름차순으로 정렬한 딕셔너리를 반환한다
        var sortedDictionary = countDictionary.sorted { (first, second) in
            return first.value < second.value }
        
        if let maxCount = sortedDictionary.popLast(){
            if let secondMaxCount = sortedDictionary.popLast(){
                if maxCount.value != secondMaxCount.value {
                    // 최빈값이 여러 개가 아닌 1개인 경우
                    result = maxCount.key
                }
            }
        }
    }
    return result
}
