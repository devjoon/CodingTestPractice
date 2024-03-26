import Foundation

func solution(_ polynomial:String) -> String {
    var x = 0
    var const = 0
    
    var exp = polynomial.components(separatedBy: " ").filter {$0 != "+"}
    
    for i in exp {
        if i.contains("x") {
            var xValueArray = Array(String(i))
            if xValueArray.count > 1 {
                xValueArray.popLast()!
                x += Int(String(xValueArray))!
            }else {
                x += 1
            }
        } else {
            const += Int(i)!
        }
    }
    
    var xResult = "x"
    
    if x != 1 {
        xResult = String(x) + xResult 
    }

    if const > 0 && x > 0 {
        return "\(xResult) + \(const)"
    } else if const > 0 {
        return "\(const)"
    } else {
        return "\(xResult)"
    }
    
    return ""
}