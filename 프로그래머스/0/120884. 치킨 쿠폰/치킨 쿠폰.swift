import Foundation

func solution(_ chicken:Int) -> Int {
    var pucon = 0
    var chicken = chicken
    
    var result = 0
    
    while chicken > 0 {
        chicken -= 1
        pucon += 1
        if pucon == 10 {
            chicken += 1
            result += 1
            pucon -= 10
        }
    }
    
    return result
}