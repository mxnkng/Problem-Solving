import Foundation

func solution(_ num_list:[Int]) -> [Int] {
    let oddNumArray : [Int] = num_list.filter { $0 % 2 == 1 }
    let evenNumArray : [Int] = num_list.filter { $0 % 2 == 0 }
    var resultArray : [Int] = []
    resultArray.append(evenNumArray.count)
    resultArray.append(oddNumArray.count)
    
    return resultArray
}

