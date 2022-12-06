func solution(_ s:String) -> String {
    let input: Array<Character> = s.map{ $0 }
    var result: String = ""
    if input.count % 2 == 0 {
        result += String(input[input.count/2 - 1])
    }
    result += String(input[input.count/2])
    return result
}