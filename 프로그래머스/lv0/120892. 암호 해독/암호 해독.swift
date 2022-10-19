import Foundation

func solution(_ cipher:String, _ code:Int) -> String {
    var cipherArray: [Character] = Array(cipher)
    var codeNumber: Int = code
    var resultString: String = ""
    while codeNumber <= cipherArray.count{
        resultString += String(cipherArray[codeNumber - 1])
        codeNumber += code
    }
    return resultString
}