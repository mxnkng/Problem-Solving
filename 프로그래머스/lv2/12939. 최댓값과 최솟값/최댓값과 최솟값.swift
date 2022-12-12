func solution(_ s:String) -> String {
    let array = s.components(separatedBy: " ").map{ Int($0)! }
    var result = "\(array.min()!) \(array.max()!)"
    return result
}