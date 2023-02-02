//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/20.
//https://school.programmers.co.kr/learn/courses/30/lessons/120956

import Foundation

func solution(_ babbling:[String]) -> Int {
    let words: [String] = ["aya", "ye", "woo", "ma"]
    let doubleWords: [String] = ["ayaaya", "yeye", "woowoo", "mama"]
    var result: Int = 0
    for bab in babbling {
        var temp = bab
        for double in doubleWords {
            temp = temp.replacingOccurrences(of: double, with: "@")
        }
        for word in words {
            temp = temp.replacingOccurrences(of: word, with: "")
        }
    }
    return result
}

func solution2(_ babbling:[String]) -> Int {
    
    return 0
}

//print(solution2(["aya", "yee", "u", "maa", "wyeoo"]))
//print(solution(["ayaye", "uuuma", "ye", "yemawoo", "ayaa"]))
