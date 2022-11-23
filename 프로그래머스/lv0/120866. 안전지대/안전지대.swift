import Foundation

func solution(_ board:[[Int]]) -> Int {
    // board는 n*n 배열
    let n: Int = board[0].count
    var checkBoard: [[Int]] = board
    for i in 0..<n {
        for j in 0..<n{
            if board[i][j] == 1{ // 0,4
                for rowIndex in i-1...i+1{ // -1 1
                    for columnIndex in j-1...j+1{ //3 5
                        if rowIndex >= 0 && rowIndex < n && columnIndex >= 0 && columnIndex < n{
                            checkBoard[rowIndex][columnIndex] = 1
                        }
                    }
                }
            }
        }
    }
    return n*n - checkBoard.flatMap{ $0 }.filter{ $0 == 1 }.count
}