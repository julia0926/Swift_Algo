//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/22.
//https://school.programmers.co.kr/learn/courses/30/lessons/120848

import Foundation

func solution(_ n:Int) -> Int {
    var temp: Int = 1
    var result: Int = 0
    for i in 1...10 {
        temp *= i
        print(temp)
        if temp >= n {
            result = i-1
            break
        }
    }
    return result
}

func solution2(_ n:Int) -> Int {
    for i in (1...10) {
        let factorial = (1...i).reduce(1) { $0 * $1 }
        if factorial > n {
            return i - 1
        }
    }
    return 10
}


print(solution(3628800))
