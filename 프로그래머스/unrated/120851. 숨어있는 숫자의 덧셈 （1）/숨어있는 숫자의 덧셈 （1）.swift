import Foundation

func solution(_ my_string:String) -> Int {
    // isNumber함수는 이 문자가 숫자를 나타내는지 여부를 나타내는 bool 값을 리턴함
    let numberString: String = my_string.filter { $0.isNumber }
    var result: Int = 0
    
    for char in numberString {
        /*
         String은 Int(String 값)으로 바로 타입변환이 가능하지만 character의 경우 지원하지 않는다.
         따라서 swift5에서 추가된 character속성인 wholeNumberValue를 사용해보았다.
         문자가 정수를 나타내는 경우 이 문자가 나타내는 숫자 값을 옵셔널 값으로 반환하는 함수이다.
         */
        if let number = char.wholeNumberValue{
            result += number
        }
    }

    return result
}
