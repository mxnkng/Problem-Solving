import Foundation

func solution(_ num:Int, _ k:Int) -> Int {
    let numArray: Array<Character> = Array(String(num))
    // Int에서 Character로 바꾸려고 하니까 에러메시지가 떠서 Int -> String -> Character로 타입 변환해주었다
    // 바로 가능한 함수가 있는지는 모르겠다..
    let firstIndex: Int = numArray.firstIndex(of: Character(String(k))) ?? -1
    //  num을 이루는 숫자 중에 k가 있는 경우 인덱스로 반환되니까 1을 더해서 반환한다
    return firstIndex == -1 ? -1 : firstIndex + 1
}