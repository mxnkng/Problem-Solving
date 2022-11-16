import Foundation

func solution(_ n:Int) -> Int {
    let numbers: [Int] = (1...200).filter{ $0 % 3 != 0 }.filter{ !String($0).contains("3") }.map{ Int($0) ?? 0 }
//    print(numbers.count) // 109
    return numbers[n-1]
}