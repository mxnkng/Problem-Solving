func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    // zip은 시퀀스 길이가 짧은 것 기준으로 결과를 반환한다
    return zip(arr1, arr2).map{zip($0,$1).map{$0+$1}}
}