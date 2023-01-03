import Foundation

func solution(_ s:String) -> Bool
{
    var ans:Bool = false
    var inputs: [Character] = []
    for c in s{
        if c == "("{
            inputs.append(c)
        } else {
            ans = (inputs.popLast() == nil ? false : true)
            if ans == false { break }
        }
    }
    if !inputs.isEmpty { ans = false }
    return ans
}