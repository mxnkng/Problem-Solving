import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    for data in db {
        if id_pw[0] == data[0] {
            // 아이디가 같은 경우
            if id_pw[1] == data[1] {
                // 아이디와 비밀번호가 모두 일치하는 회원정보가 있는 경우
                return "login"
            } else {
                //아이디는 일치하지만 비밀번호가 일치하는 회원이 없는 경우
                return "wrong pw"
            }
        }
    }
    return "fail"
}