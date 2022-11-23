import Foundation

func solution(_ polynomial:String) -> String {
    let polynomialXArray = polynomial.components(separatedBy: " ").filter{ $0.contains("x")}
    let polynomialNumberArray = polynomial.components(separatedBy: " ").filter{ !$0.contains("x") && $0 != "+"}.map{ Int($0) ?? 0 }
    let number: Int = polynomialNumberArray.reduce(0, +)
    var numberX: Int = 0
    var resultString: String = ""
    
    for value in polynomialXArray {
        if value == "x" {
            numberX += 1
        }
        else{
            var valueX = value
            valueX.removeLast()
            numberX += Int(valueX) ?? 0
        }
    }
    if numberX != 0 {
        // x의 계수가 1인 경우를 표시할 때 1x가 아닌 x로 표시해야 한다
        let x: String = (numberX == 1 ? "x" : "\(numberX)x")
        resultString = x
    }
    if number != 0{
        // 상수항만 존재하는 다항식인 경우에는 바로 상수항을 적어준다
        // x가 존재하는 다항식의 경우에는 + 연산자를 사용해서 상수항을 표시한다
        let c: String = resultString == "" ? "\(number)": " + \(number)"
        resultString += c
    }
    return resultString
}