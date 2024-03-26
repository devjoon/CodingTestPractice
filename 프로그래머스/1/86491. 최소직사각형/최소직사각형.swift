import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var sortedSizes = sizes.map {($0).sorted(by:<)}
    
    var wMax = sortedSizes.map{$0[0]}.max()!
    var hMax = sortedSizes.map{$0[1]}.max()!

    return wMax * hMax
}