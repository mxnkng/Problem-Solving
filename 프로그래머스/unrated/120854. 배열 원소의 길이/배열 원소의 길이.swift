import Foundation

func solution(_ strlist:[String]) -> [Int] {
    var resultArray : [Int] = []
    for str in strlist {
        resultArray.append(str.count)
    }
    return resultArray
}