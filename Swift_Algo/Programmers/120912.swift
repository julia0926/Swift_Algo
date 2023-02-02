//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/25.
//https://school.programmers.co.kr/learn/courses/30/lessons/120912

import Foundation

func solution(_ array:[Int]) -> Int {
    var result: Int = 0
    let str: [String] = array.map { String($0) }
    for s in str {
        let tmp: Int = s.filter { $0 == "7" }.count
        result += tmp
    }
    return result
}

//solution([7,77,17])
//solution([10,29])

func solution2(_ array:[Int]) -> Int {
    // [Int] -> [String]으로 바꾸고 String으로 joined 후 7 몇개인지 count
    let result = array.map { String($0) }.joined().filter { $0 == "7" }.count
    print(result)
    return result
}

//solution2([7,77,17])
