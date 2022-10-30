import Foundation

func solution(_ my_string:String) -> Int {
    let inputString: [String] = my_string.components(separatedBy: " ")
    var firstNumber: Int? = nil
    var secondNumber: Int? = nil
    var operation: String = ""
    for input in inputString{
        if ["+", "-"].contains(input){
            operation = input
        }
        if firstNumber == nil {
            firstNumber = Int(input)
        }
        else if secondNumber == nil{
            var result: Int = 0
            secondNumber = Int(input)
            if operation == "+"{
                result = (firstNumber ?? 0) + (secondNumber ?? 0)
            }
            else{
                result = (firstNumber ?? 0) - (secondNumber ?? 0)
            }
            firstNumber = result
            secondNumber = nil
        }
    }
    return (firstNumber ?? 0)
}