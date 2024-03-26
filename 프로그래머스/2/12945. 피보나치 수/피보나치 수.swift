func solution(_ n:Int) -> Int {
    var fArr = Array(repeating:0,count:n+1)
    fArr[0] = 0
    fArr[1] = 1
    
    for i in 2...n {
        fArr[i] = (fArr[i-2] + fArr[i-1]) % 1234567
    }
    
    return fArr.removeLast() 
}