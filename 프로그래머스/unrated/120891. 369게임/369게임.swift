import Foundation

func solution(_ order:Int) -> Int {
    let orders = Array(String(order)).map{ Int(String($0))! }
    return orders.filter{ [3,6,9].contains($0) }.count
}