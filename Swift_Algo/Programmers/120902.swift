//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/18.
//https://school.programmers.co.kr/learn/courses/30/lessons/120902

import Foundation

func solution(_ my_string:String) -> Int {
    let result = my_string.replacingOccurrences(of: " - ", with: " + -").components(separatedBy: " + ").map { Int($0)! }.reduce(0) { $0+$1 }
    return result
}

//solution("3 + 4 - 5 - 4")
//solution("5-4")
