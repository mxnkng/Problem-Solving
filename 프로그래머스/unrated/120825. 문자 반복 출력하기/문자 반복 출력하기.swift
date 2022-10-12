import Foundation

func solution(_ my_string:String, _ n:Int) -> String {
    var resultString : String = ""
    
    for char in my_string{
        /*
         swift의 내장함수 String(repeating:count:) 문자열 반복과, 배열 크기를 지정할 수 있는 함수
         init(repeating:count:) 형태로 문자열, 배열 다 사용 가능하다
         */
        resultString += String(repeating: char, count: n)
    }
    return resultString
}
