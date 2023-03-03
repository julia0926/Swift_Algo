//
//  Main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/06.
//https://school.programmers.co.kr/learn/courses/30/lessons/138476

import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var dic: [Int: Int] = [:]
    tangerine.forEach { dic[$0, default: 0] += 1 }
    let sortedDic = dic.values.sorted(by: >)
    
    var answer = 0
    var temp = 0
    for (idx, value) in sortedDic.enumerated() {
        temp += value
        if temp >= k {
            answer = idx + 1
            break
        }
        
    }
    return answer
}

//print(solution(6, [1, 3, 2, 5, 4, 5, 2, 3]    ))
//print(solution(2, [1, 1, 1, 1, 2, 2, 2, 3]))
