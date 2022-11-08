import Foundation

func solution(_ my_string:String) -> Int {
    let alphabets = "abcdefghijklmnopqrstuvwxyz"
    var string = my_string
    for a in alphabets{
        string = string.replacingOccurrences(of: String(a), with: " ")
        string = string.replacingOccurrences(of: String(a).uppercased(), with: " ")
    }
    var numbers = string.components(separatedBy: " ").filter{ $0 != "" }
    return numbers.map{ Int($0) ?? 0 }.reduce(0, +)
}