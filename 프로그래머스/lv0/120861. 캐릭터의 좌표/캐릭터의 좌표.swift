import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var coordinate: [Int] = [0,0]
    let maxValue: [Int] = [board[0] / 2, board[1] / 2]
    for key in keyinput{
        switch key{
        case "up":
            coordinate[1] = coordinate[1] < maxValue[1] ? coordinate[1] + 1: coordinate[1]
        case "down":
            coordinate[1] = coordinate[1] > -maxValue[1] ? coordinate[1] - 1: coordinate[1]
        case "left":
            coordinate[0] = coordinate[0] > -maxValue[0] ? coordinate[0] - 1: coordinate[0]
        case "right":
            coordinate[0] = coordinate[0] < maxValue[0] ? coordinate[0] + 1: coordinate[0]
        default:
            print("error")
        }
    }
    return coordinate
}