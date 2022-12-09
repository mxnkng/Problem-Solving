func solution(_ n:Int) -> String {
    var result: String = ""
    var count: Int = 0
    
    while count < n {
        result += (count % 2 == 0) ? "수" : "박"
        count += 1
    }
    return result
}