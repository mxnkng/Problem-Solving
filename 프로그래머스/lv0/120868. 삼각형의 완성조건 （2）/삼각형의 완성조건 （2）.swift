import Foundation

func solution(_ sides:[Int]) -> Int {
    var count: Int = 0
    // 가장 긴 변이 주어진 두 변 중 하나인 경우 sides.max() < sides.min() + side
    count += (0...sides.max()!).filter{ $0 > sides.max()! - sides.min()! }.count
    // 가장 긴 변이 나머지 한 변인 경우
    count += ((sides.max()!+1)..<(sides[0]+sides[1])).count
    return count
}