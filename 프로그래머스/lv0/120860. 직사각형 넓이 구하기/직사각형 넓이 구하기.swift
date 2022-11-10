import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var xSet: Set<Int> = []
    var ySet: Set<Int> = []
    
    for i in 0...3{
        xSet.insert(dots[i][0])
        ySet.insert(dots[i][1])
    }

    return (xSet.max()! - xSet.min()!) * (ySet.max()! - ySet.min()!)
}