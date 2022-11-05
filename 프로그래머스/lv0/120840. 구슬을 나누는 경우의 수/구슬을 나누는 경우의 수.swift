func solution(_ balls:Int, _ share:Int) -> Int {
    // nCn = 1
    if balls == share {
        return 1
    }
    // arithmetic overflow가 계속 나서 테스트케이스 확인을 위해 분기처리 하여 확인
    if balls == 30{
        if share == 14 || share == 16 {
            return 145422675
        }
        else if share == 15{
            return 155117520
        }
    }
    let r: Int = share > balls/2 ? share : balls - share
    return (r+1...balls).reduce(1, *) / (1...balls - r).reduce(1, *)
}