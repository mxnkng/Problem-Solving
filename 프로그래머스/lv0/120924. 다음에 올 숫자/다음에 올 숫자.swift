import Foundation

func solution(_ common:[Int]) -> Int {
    if common[2] - common[1] == common[1] - common[0] {
        // 등차수열인 경우
        return common.last! + (common[2] - common[1])
    } else {
        // 등비수열인 경우
        return common.last! * (common[2] / common[1])
    }
}