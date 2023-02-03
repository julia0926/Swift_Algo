//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/155652

import Foundation

func solution(_ s:String, _ skip:String, _ index:Int) -> String {
    var alpha = "abcdefghijklmnopqrstuvwxyz"
        .map { String($0) }
        .filter { !skip.contains($0) }
    var result = ""
    for ch in s.map({ String($0) }) {
        var nowIdx = alpha.firstIndex(of: ch)! + index
        if nowIdx >= alpha.count {
            nowIdx %= alpha.count
        }
        result += alpha[alpha.index(alpha.startIndex, offsetBy: nowIdx)]
    }
    return result
}

//solution("ybcde", "az", 1)
