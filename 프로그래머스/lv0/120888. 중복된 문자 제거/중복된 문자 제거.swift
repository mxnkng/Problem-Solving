import Foundation

func solution(_ my_string:String) -> String {
    var setMyString = Set(Array(my_string))
    var resultString: String = ""
    for myChar in my_string{
        if setMyString.contains(myChar){
            resultString += String(myChar)
            setMyString.remove(myChar)
        }
    }
    return resultString
}