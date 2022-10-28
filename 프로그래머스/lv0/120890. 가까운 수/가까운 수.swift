import Foundation

func solution(_ array:[Int], _ n:Int) -> Int {
    let arrayDiff: [Int] = array.map{ abs($0 - n) }
    var indices: [Int] = []
    for (index, number) in arrayDiff.enumerated(){
        if number == arrayDiff.min() ?? -1{
            indices.append(index)
        }
    }
    if indices.count == 2 {
        return min(array[indices[0]], array[indices[1]])
    } else {
        return array[indices[0]]
    }
}