import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let spell = spell.map{ Character($0) }
    for str in dic{
        let s = str.map{ $0 }
        if Set(spell).isSubset(of: Set(s)) {
            return 1
        }
    }
    return 2
}