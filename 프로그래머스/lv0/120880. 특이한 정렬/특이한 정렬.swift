import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    return numlist.sorted {(a,b) -> Bool in
        if abs(a-n) == abs(b-n) {
            return a > b
        }
        return abs(a-n) < abs(b-n)
    }
}