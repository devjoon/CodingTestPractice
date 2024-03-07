import Foundation

func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    var boardcol = board[0]/2
    var boardrow = board[1]/2
    var result = [0,0]
    
    for i in keyinput {
        switch i {
            case "left":
                if result[0] != -boardcol {
                    result[0] -= 1
                }
            case "right":
                if result[0] != boardcol {
                    result[0] += 1 
                }
            case "up":
                if result[1] != boardrow {
                    result[1] += 1
                }
            case "down":
                if result[1] != -boardrow {
                    result[1] -= 1
                }
            default:
            break
        }
    }
    
    return result
}