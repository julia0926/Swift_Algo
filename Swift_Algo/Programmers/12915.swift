//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/22.
//https://school.programmers.co.kr/learn/courses/30/lessons/12915?language=swift

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    let result: [String] = strings.sorted {
        let left: Character = $0[$0.index($0.startIndex, offsetBy: n)]
        let right: Character = $1[$1.index($1.startIndex, offsetBy: n)]
        if left == right {
            return $0 < $1
        } else {
            return left < right
        }
    }
    return result
}

print(solution(["cdx", "abce", "abcd"], 2))
