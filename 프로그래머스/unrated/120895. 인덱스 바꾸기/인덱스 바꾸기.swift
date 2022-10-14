import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var myStringArray: Array<Character> = Array(my_string)
    // 입력받은 String 값을 Array로 형변환 해주어서 인덱스에 직접 접근해서 값을 변경하고 반환 값은 다시 String으로 형변환하여 출력해준다
    let temp = myStringArray[num1]
    myStringArray[num1] = myStringArray[num2]
    myStringArray[num2] = temp
    
    return String(myStringArray)
}