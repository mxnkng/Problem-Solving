import Foundation

func solution(_ lines:[[Int]]) -> Int {
    var set1 = Set(lines[0][0]..<lines[0][1])
    var set2 = Set(lines[1][0]..<lines[1][1])
    var set3 = Set(lines[2][0]..<lines[2][1])
    
    var count: Int = set1.intersection(set2).count + set2.intersection(set3).count + set3.intersection(set1).count - (2 * set1.intersection(set2.intersection(set3)).count)
    
    return count
}