import Foundation

func solution(_ n:Int, _ k:Int) -> Int {
    return n * 12000 + 2000 * ((n / 10 > 0) ? (k - n / 10) : k)
}