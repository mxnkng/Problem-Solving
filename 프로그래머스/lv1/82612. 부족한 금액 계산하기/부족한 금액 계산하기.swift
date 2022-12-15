import Foundation

func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var totalPrice: Int64 = (1...count).reduce(Int64(0)) { $0 + Int64($1)} * Int64(price)
    var answer: Int64 = Int64(money) - totalPrice
    return answer >= 0 ? 0 : -answer
}