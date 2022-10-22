import Foundation

func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    var resultArray: [[Int]] = []
    var array: [Int] = []
    for num in num_list{
        if array.count < n-1{
            array.append(num)
        }
        else if array.count == n-1 {
            array.append(num)
            resultArray.append(array)
            array = []
        }
    }
    return resultArray
}