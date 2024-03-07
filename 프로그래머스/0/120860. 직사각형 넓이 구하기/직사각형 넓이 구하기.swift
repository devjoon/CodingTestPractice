import Foundation

func solution(_ dots:[[Int]]) -> Int {
    var xMax = [dots[0][0],dots[1][0],dots[2][0],dots[3][0]].max()!
    var xMin = [dots[0][0],dots[1][0],dots[2][0],dots[3][0]].min()!
    
    var yMax = [dots[0][1],dots[1][1],dots[2][1],dots[3][1]].max()!
    var yMin = [dots[0][1],dots[1][1],dots[2][1],dots[3][1]].min()!

    return (xMax - xMin) * (yMax - yMin)
}