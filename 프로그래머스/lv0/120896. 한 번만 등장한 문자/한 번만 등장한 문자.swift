import Foundation

func solution(_ s:String) -> String {
    var resultArray: String = ""
    for c in s {
        if s.firstIndex(of: c) == s.lastIndex(of: c){
            resultArray += String(c)
        }
    }
    return String(resultArray.sorted())
}