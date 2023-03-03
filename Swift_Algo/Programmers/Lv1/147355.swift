//
//  142086.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/10.
// https://school.programmers.co.kr/learn/courses/30/lessons/147355?language=swift

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    let arr = Array(t)
    let rangeIdx = t.count-p.count
    var result = 0
    let intP = Int(p)!
    print(t.startIndex)
    for i in 0...rangeIdx {
        let startIdx = i
        let endIdx = i+p.count
        
        let piv = arr[startIdx..<endIdx].map { String($0) }.joined()
        if Int(piv)! <= intP {
            result += 1
        }
    }
    return result
}

//참고풀이
func solution2(_ t:String, _ p:String) -> Int {
    var count = 0
    for i in 0...t.count - p.count {
        let startIdx = t.index(t.startIndex, offsetBy: i)
        let endInd = t.index(t.startIndex, offsetBy: i+p.count)
        if Int(t[startIdx..<endInd])! <= Int(p)! {
            count += 1
        }
    }
    return count
}

//solution2(    "10203", "15")
//solution("500220839878", "7")
