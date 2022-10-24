import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var resultArray: [String] = []
    var result: String = ""
    for char in my_str{
        if result.count == n{
            resultArray.append(result)
            result = ""
        }
        result += String(char)
    }
    return resultArray + [result]
}