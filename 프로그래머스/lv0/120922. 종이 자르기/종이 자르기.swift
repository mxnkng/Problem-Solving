import Foundation

func solution(_ M:Int, _ N:Int) -> Int {
    return ((min(M, N)-1)+(min(M, N)*(max(M, N)-1)))
}