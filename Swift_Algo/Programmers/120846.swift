//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/02.
//https://school.programmers.co.kr/learn/courses/30/lessons/120846?language=swift

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    for i in 1...n {
        var count = 0
        for j in 1...i {
            if i % j == 0 {
                count += 1
            }
        }
        if count >= 3 {
            result += 1
        }
    }
    return result
}

print(solution(10))
