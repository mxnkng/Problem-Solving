let numberArray = ["zero": "0", "one":"1", "two":"2", "three":"3", "four":"4", "five":"5", "six":"6", "seven":"7", "eight":"8", "nine":"9"]

import Foundation

func solution(_ numbers:String) -> Int64 {
    var numbers: String = numbers
    for number in numberArray{
        if numbers.contains(number.0){
            numbers = numbers.replacingOccurrences(of: number.0, with: number.1)
        }
    }
    return Int64(numbers) ?? 0
}