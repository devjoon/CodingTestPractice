import Foundation

func solution(_ a:Int, _ b:Int) -> Int {
    var gcd = GCD(a,b)
    var b = b/gcd
    
    while b % 2 == 0 {
        b /= 2
    }
    
    while b % 5 == 0 {
        b /= 5
    }
    
    return b == 1 ? 1 : 2
    
}

func GCD(_ a:Int, _ b:Int) -> Int {
    var a = a
    var b = b
    var max = [a,b].max()!
    var min = 2
    var answer = 1
    
    while min <= max {
        if a % min == 0 && b % min == 0 {
            answer *= min
            a /= min
            b /= min
        } else {
            min += 1
        }
    }
    
    return answer
}