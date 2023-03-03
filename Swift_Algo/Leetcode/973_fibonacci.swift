//
//  min.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//

import Foundation

//재귀
func fib(_ n: Int) -> Int {
    if n <= 1 {
        return n
    } else {
        return fib(n-1)+fib(n-2)
    }
}

//메모제이션
func fib2(_ n: Int) -> Int {
    var dp = Array(repeating: 0, count: n+1)
    if n <= 1 {
        return n
    }
    dp[1] = 1
    for i in 2...n {
        dp[i] = dp[i-1] + dp[i-2]
    }
    return dp[n]
}

//print(fib2(6))
