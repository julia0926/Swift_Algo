//
//  120864.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/09.
// https://school.programmers.co.kr/learn/courses/30/lessons/120864

import Foundation
// 고차함수 안쓰고
func solution(_ my_string:String) -> Int {
    var ans = 0
    
    var temp = ""
    for ch in my_string {
        if ch.isNumber {
            temp += String(ch)
        } else {
            if !temp.isEmpty {
                ans += Int(temp)!
                temp = ""
            }
        }
    }
    if !temp.isEmpty {
        ans += Int(temp)!
    }
    return ans
}

//고차함수 써서
func solution2(_ my_string:String) -> Int {
    let a = my_string.map { $0.isNumber ? String($0) : " "}
    return a.joined().components(separatedBy: " ").filter { $0 != "" }.map { Int($0)! }.reduce(0, +)
}

//print(solution("aAb1B2cC34oOp"))
//print(solution2("aAb1B2cC34oOp"))
