import Foundation

func solution(_ A:String, _ B:String) -> Int {
    var A = A
    var count = 0
    
    if A == B {
        return 0
    }
    
    for i in 0..<A.count {
        var temp = A.removeLast()
        
        A = String(temp) + A
        count += 1
        
        if A == B {
            return count
        }
    }
    
    return -1
}