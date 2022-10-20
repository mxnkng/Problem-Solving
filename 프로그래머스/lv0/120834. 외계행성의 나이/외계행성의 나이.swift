import Foundation

func solution(_ age:Int) -> String {
    var age = Array(String(age))
    var result = ""
    while !age.isEmpty {
        //아스키 코드 값을 이용
        result += String(UnicodeScalar(Int(String(age.removeFirst()))! + 97)!)
    }
    return result
}