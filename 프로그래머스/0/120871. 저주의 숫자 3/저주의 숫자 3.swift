import Foundation

func solution(_ n: Int) -> Int {
    var count = 0
    var answer = 0
    
    while count < n {
        answer += 1
        if answer % 3 == 0 || String(answer).contains("3") {
            continue
        }
        count += 1
    }
    
    return answer
}

