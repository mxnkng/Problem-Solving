func solution(_ num:Int) -> Int {
    if num == 1 { return 0 }
    
    var count: Int = 0
    var number: Int = num
    while count < 500 {
        count += 1
        if number % 2 == 0 {
            number /= 2
        } else {
            number *= 3
            number += 1
        }
        if number == 1 {
            break
        }
    }
    return count == 500 ? -1 : count
}