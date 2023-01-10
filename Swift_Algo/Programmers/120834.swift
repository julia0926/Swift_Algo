//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/10.
// https://school.programmers.co.kr/learn/courses/30/lessons/120834

import Foundation

func solution(_ age:Int) -> String {
    let alpha = Array("abcdefghijklmnopqrstuvwxyz")
    var result = ""
    for i in String(age) {
        let idx = Int(String(i))!
        result+=String(alpha[idx])
    }
    return result
}

//참고 풀이
//func solution2(_ age:Int) -> String {
//    let alpha = Array("abcdefghij")
//    return String(age).map{alpha[Int(String($0))!]}.joined()
//}

//print(solution(100))
