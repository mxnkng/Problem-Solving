import Foundation

func solution(_ quiz:[String]) -> [String] {
    var resultArray: [String] = []
    for string in quiz {
        let str = string.components(separatedBy:" ")
        let value: Int
        if str[1] == "+" {
            value = (Int(str[0]) ?? 0) + (Int(str[2]) ?? 0)
        } else {
            value = (Int(str[0]) ?? 0) - (Int(str[2]) ?? 0)
        }
        if value == (Int(str[4]) ?? 0) {
            resultArray.append("O")
        } else{
            resultArray.append("X")
        }
    }
    return resultArray
}