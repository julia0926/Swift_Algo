//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/140108?language=swift

import Foundation

func solution(_ s:String) -> Int {
    var diff: Int = 0
    var pivot: Character = s.first!
    var first: Int = 0
    var result: Int = 0
    
    for (idx,st) in s.map({ String($0) }).enumerated() {
        if pivot == Character(st) {
            first += 1
        } else {
            diff += 1
        }
        if first == diff && first != 0 {
            result += 1
            if idx + 1 < s.count {
                pivot = s[s.index(s.startIndex, offsetBy: idx+1)]
            }
            first = 0
            diff = 0
        }
    }
    if first != 0 { //나머지 남아있는 것도 분해된 것이므로 하나 추가
        result += 1
    }
    return result
}
//
//solution("aaabbaccccabba")
//solution("abracadabra")
