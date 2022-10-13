import Foundation

func solution(_ rsp:String) -> String {
    var resultString: String = ""
    for rspOrder in rsp{
        if rspOrder == "2" {
            resultString += "0"
        } else if rspOrder == "0" {
            resultString += "5"
        } else if rspOrder == "5" {
            resultString += "2"
        }
    }
    return resultString
}