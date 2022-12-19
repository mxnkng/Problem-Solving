import Foundation

func solution(_ s:String) -> String {
    let inputString: [String] = s.components(separatedBy: " ")
    // components 함수는 import Foundation 후에 사용 가능
    var resultArray: [String] = []
    for string in inputString {
        var result = string.lowercased()
        if string != "" {
            if !"1234567890".contains(string.first!){
                // 숫자로 시작하지 않는 경우 == 알파벳으로 시작하는 경우
                result.removeFirst()
                result = string.first!.uppercased() + result
            }
        }
        resultArray.append(result)
    }
    return resultArray.joined(separator: " ")
}