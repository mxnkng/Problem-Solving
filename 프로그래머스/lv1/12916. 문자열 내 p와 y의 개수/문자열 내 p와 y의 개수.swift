import Foundation

func solution(_ s:String) -> Bool
{
    let s = s.lowercased()
    var ans:Bool = (s.filter{ $0 == "p"}.count == s.filter{ $0 == "y"}.count) ? true : false
    return ans
}