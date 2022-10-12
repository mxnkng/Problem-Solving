import Foundation

func solution(_ my_string:String) -> String {
    let sortedCharacters : [Character] = my_string.lowercased().map{ $0 }.sorted(by: <)
    // Array<Character>를 String으로 바꿀 때에는 그냥 타입캐스팅만 해주면 된다!
    return String(sortedCharacters)
}
