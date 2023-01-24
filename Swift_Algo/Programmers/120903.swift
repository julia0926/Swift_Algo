//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/20.
// https://school.programmers.co.kr/learn/courses/30/lessons/120906

import Foundation
func solution(_ n:Int) -> Int {
    var result = 0
    for a in String(n) {
        result += Int(String(a))!
    }
    return result
}

func solution2(_ n:Int) -> Int {
    return String(n).map { Int(String($0))! }.reduce(0, +)
}

//print(solution2(1234))
