func solution(_ s:String) -> Bool {
    return (s.count == 4 || s.count == 6) && s.filter{ !"1234567890".contains($0)}.count == 0
}