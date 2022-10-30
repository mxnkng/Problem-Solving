import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    if numbers.count >= (2 * k - 1){
        return (2 * k - 1)
    } else{
        return (2 * k - 1) % numbers.count
    }
}