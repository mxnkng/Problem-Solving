func solution(_ seoul:[String]) -> String {
    let index: Int = seoul.firstIndex(of: "Kim") ?? 0
    return "김서방은 \(index)에 있다"
}