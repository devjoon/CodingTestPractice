import Foundation

func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    var numSortedAbs = numlist.sorted(by : >).sorted {
        abs($0-n) < abs($1-n)
    }
    return numSortedAbs
}