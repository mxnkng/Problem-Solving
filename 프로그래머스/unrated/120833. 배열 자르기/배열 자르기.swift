import Foundation

func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    /*
     범위로 numbers[num1...num2]처럼 접근하면 ArraySlice라는 타입으로 반환되는데 정수형 타입의 배열과는 반환형이 다른 것에 주의!
     이 문제에서는 ArraySlice 타입을 Array로 다시 타입을 변환해주었다
     */
    return Array(numbers[num1...num2])
}
