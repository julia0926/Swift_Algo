//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/24.
//

import Foundation

//부분 수열합 구하기 
func solution(_ estimates: [Int], _ k: Int) -> Int {
    var dp: [Int] = Array.init(repeating: 0, count: estimates.count)
    dp[0] = estimates[0]
    for i in 1..<estimates.count {
        dp[i] = max(0, dp[i-1]) + estimates[i]
    }
    
    var result: [Int] = []
    for i in k..<estimates.count {
        let val = dp[i] - dp[i-k]
        result.append(val)
    }
    return result.max() ?? 0
}

//solution([5,1,9,8,10,5], 3)
//
//print(solution([10,1,10,1,1,4,3,10],6))
