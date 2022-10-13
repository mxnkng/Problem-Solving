import Foundation

func solution(_ my_string:String) -> String {
    var resultString: String = ""
    for char in my_string{
        if char.isUppercase{
            resultString += char.lowercased()
        } else {
            resultString += char.uppercased()
        }
    }
    return resultString
}