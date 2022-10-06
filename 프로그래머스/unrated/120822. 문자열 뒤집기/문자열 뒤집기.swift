import Foundation

func solution(_ my_string:String) -> String {
    var resultString : String = ""
    for i in my_string{
        resultString = String(i) + resultString
    }
    return resultString
}