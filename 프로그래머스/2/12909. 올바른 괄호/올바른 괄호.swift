import Foundation

func solution(_ s:String) -> Bool
{
    var stack = ""
    for i in s {
        if i == "(" {
            stack.append(i)
        } else {
            if !stack.isEmpty {
                stack.removeLast()    
            } else {
                return false
            }
        }
    }
    return stack.isEmpty ? true : false
}