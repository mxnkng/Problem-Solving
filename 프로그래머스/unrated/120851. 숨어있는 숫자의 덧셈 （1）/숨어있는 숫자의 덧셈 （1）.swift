import Foundation

func solution(_ my_string:String) -> Int {
    // compactMap은 컨테이너의 각 요소를 조건을 지정하여 호출할 때, nil 이 아닌 배열을 반환
     return my_string.compactMap{Int(String($0))}.reduce(0,+)
}
