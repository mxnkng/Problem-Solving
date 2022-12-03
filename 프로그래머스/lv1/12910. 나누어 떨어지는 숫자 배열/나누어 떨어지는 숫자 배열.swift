func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let resultArray: [Int] = arr.filter{ $0 % divisor == 0 }.sorted(by: <)
    return resultArray.count == 0 ? [-1] : resultArray
}