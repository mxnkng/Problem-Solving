import Foundation

func solution(_ n:Int) -> Int {
    var numberArray : [Int] = []
    for i in 1...1000{
        numberArray.append(i * i)
    }
    return numberArray.contains(n) ? 1 : 2
}
