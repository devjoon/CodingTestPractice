import Foundation

func solution(_ food:[Int]) -> String {
    var result = ""
    var count = 1
    
    for i in 1..<food.count {
        
        if food[i]/2 >= 1 {
            for _ in 0..<food[i]/2{
                result.append(String(count))
            }
            
        }
        count += 1
    }
    var resultCopy = String(result.reversed())
    result.append("0")
    result.append(resultCopy)
    
    return result
}