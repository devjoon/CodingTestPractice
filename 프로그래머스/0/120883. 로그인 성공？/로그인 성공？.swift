import Foundation

func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var result = ""
    for i in db {
        if id_pw[0] == i[0] {
            if id_pw[1] == i[1] {
                return "login"    
            }
            result = "wrong pw"
        }
        if result.isEmpty {
            result = "fail"
        }
    }
    return result
}