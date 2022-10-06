import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    /*
    특정 문자열을 포함하고 있는지는 contains(_:) 에 원하는 문자열을 넣어서 판단할 수 있다. 
    
    반환형은 Bool 이다. (문자 Character, 문자열 String 모두 사용 가능)
    */
    
    if str1.contains(str2) { return 1}
    else { return 2 }
}