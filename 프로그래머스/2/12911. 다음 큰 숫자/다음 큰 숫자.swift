import Foundation

func solution(_ n:Int) -> Int
{
    var answer = String(n,radix:2).filter {$0 == "1"}.count
    
    for i in n+1..<1000000 {
        if answer == String(i,radix:2).filter {$0 == "1"}.count {
            return i
        }
    }
    return answer
}