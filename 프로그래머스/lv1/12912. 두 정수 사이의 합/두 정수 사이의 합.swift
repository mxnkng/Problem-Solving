func solution(_ a:Int, _ b:Int) -> Int64 {
    let minValue: Int64 = Int64(min(a, b))
    let maxValue: Int64 = Int64(max(a, b))
    var result: Int64 = 0
    
    if minValue < 0 && abs(minValue) < maxValue {
        for i in (abs(minValue)+1)...maxValue {
            result += i
        }
    }
    else {
        for i in minValue...maxValue {
            result += i
        }
    }
    return result
}