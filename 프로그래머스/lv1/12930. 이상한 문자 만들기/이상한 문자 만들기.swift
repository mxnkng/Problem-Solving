import Foundation
func solution(_ s:String) -> String {
    let input: [String] = s.components(separatedBy: " ")
    var resultArray: [String] = []
    
    for str in input{
        var count: Int = 0
        var result: String = ""
        for s in str{
            result += ((count % 2 == 0) ? String(s).uppercased() : String(s).lowercased())
            count += 1
        }
        resultArray.append(result)
    }
    return resultArray.joined(separator: " ")
}