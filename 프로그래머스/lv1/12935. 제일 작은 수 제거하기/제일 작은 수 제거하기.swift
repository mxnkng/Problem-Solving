func solution(_ arr:[Int]) -> [Int] {
    let min: Int = arr.min() ?? 0
    let resultArray: [Int] = arr.filter{ $0 != min }
    return resultArray == [] ? [-1] : resultArray
}