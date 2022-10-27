import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var numberString: String = ""
    for number in i...j{
        numberString += String(number)
    }
    return numberString.filter{ String($0) == String(k)}.count
}