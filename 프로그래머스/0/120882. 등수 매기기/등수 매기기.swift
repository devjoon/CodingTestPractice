import Foundation

func solution(_ score:[[Int]]) -> [Int] {

    var result = Array(repeating:0, count:score.count)
    
    var totalScore = score.map{$0[0]+$0[1]}
    var sortedTotalScore = Array(Set(totalScore)).sorted(by: >)
    var count = 1
    
    for i in 0..<sortedTotalScore.count {
        var tempCount = count
        for j in 0..<totalScore.count {
            if sortedTotalScore[i] == totalScore[j] {
                result[j] = tempCount
                count += 1
            }
        }
    }

    return result
}