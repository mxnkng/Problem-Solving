func solution(_ phone_number:String) -> String {
    var resultString: String = ""
    for (index, value) in phone_number.enumerated() {
        resultString += index < phone_number.count - 4 ? "*" : String(value)
    }
    return resultString
}