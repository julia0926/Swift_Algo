//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/22.
//https://school.programmers.co.kr/learn/courses/30/lessons/12950

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var result: [[Int]] = []
    for (a1, a2) in zip(arr1, arr2) {
        var tmp: [Int] = []
        for (b1, b2) in zip(a1, a2) {
            tmp.append(b1+b2)
        }
        result.append(tmp)
    }
    return result
}

//위의 내코드 고차함수 써서 표현..
func solution2(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map { zip($0, $1).map { $0+$1 } }
}

solution([[1, 2], [2, 3]], [[3, 4], [5, 6]])
