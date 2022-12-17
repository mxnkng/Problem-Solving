func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = Array(repeating: [], count: arr1.count)
    for i in 0..<arr1.count{
        for j in 0..<arr1[0].count{
            result[i].append(arr1[i][j] + arr2[i][j])
        }
    }
    return result
}