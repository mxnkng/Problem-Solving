import Foundation

func solution(_ s:String) -> Int {
    let array = s.components(separatedBy: " ")
    var lastNumbers: [String] = ["Z"]
    var result: Int = 0
    for str in array{
        if str != "Z"{
            result += Int(str)!
            lastNumbers.append(str)
        } else{
            if !lastNumbers.isEmpty {
                result -= Int(lastNumbers.popLast() ?? "")!
            }
        }
    }
    return result
}