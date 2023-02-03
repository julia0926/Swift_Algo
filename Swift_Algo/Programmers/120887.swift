//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/120887

import Foundation

func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    var result: Int = 0
    for num in i...j {
        result += "\(num)".map { String($0) }.filter { $0.contains("\(k)") }.count
    }
    return result

    //reduce 사용
//    return (i...j).map {
//        String($0).filter{ String($0) == String(k) }.count
//    }.reduce(0, +)
    
}

//solution(1, 13, 1)
