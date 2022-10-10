import Foundation

func solution(_ my_string:String, _ letter:String) -> String {
    //components 함수를 통해서 letter를 기준으로 문자열을 나눠주고, 나눈 배열을 joined 함수를 통해서 합쳐준다
    return my_string.components(separatedBy: letter).joined()
}