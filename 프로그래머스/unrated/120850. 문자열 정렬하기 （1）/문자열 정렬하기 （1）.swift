import Foundation

func solution(_ my_string:String) -> [Int] {
    let numberArray = Array(my_string.filter{ "0123456789".contains($0) })
    return numberArray.map{ Int(String($0))! }.sorted(by: <)
}