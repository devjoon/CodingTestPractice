import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    //맨 앞에것 부터 며칠이 걸리는지 계산해보기
    //해당 일자를 기준으로 빠른경우 progrsses에서 제거하고
    //제거할때마다 return 에 들어갈 값에 + 1 씩 해줌 다 끝나면
    // 남아 있는 애들로부터 맨 앞에서부터 다시 시작
    
    var spendDayArr = [Int]()
    var newSpendDayArr = [Int]()
    var spendDay = 0
    var progresses = progresses
    var result = [Int]()
    
    for i in 0..<progresses.count {
        var spendDay = 0
        while progresses[i] < 100 {
            progresses[i] += speeds[i]
            spendDay += 1
        }
        spendDayArr.append(spendDay)
    }
    print("걸리는 시간",spendDayArr)
    // 일단 걸리는 시간은 완성

    while !spendDayArr.isEmpty {
        var first = spendDayArr.removeFirst()
        
        if spendDayArr.isEmpty {
            result.append(1)
            break
        }// 만약 spendDayArr이 원소가 하나였다면
            
            // 각각 배열에 접근해서 작은수거나 같은경우 카운트 올리고 배열에서 제거
            // 어떻게 제거 해야할까 , 제거하면 다음 원소에 어떻게 접근하지
        var count = 1
        var flag = true
        for i in spendDayArr {
            if i <= first && flag == true {
                count += 1
            } else {
                newSpendDayArr.append(i)// 이렇게 하면 newSpendDayArr이 이전날은 제거되고 만들어짐
                flag = false
            }
        }
        spendDayArr = newSpendDayArr
        newSpendDayArr = []
        result.append(count)
        count = 1   
    }
    return result
}