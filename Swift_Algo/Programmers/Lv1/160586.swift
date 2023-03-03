//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/160586

import Foundation



func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var keyDic = [Character: Int]()
    func makeDic() {
        for key in keymap {
            for (idx, key) in key.enumerated() {
                print(keyDic)
                if keyDic[key] == nil {
                    keyDic[key] = idx+1
                } else {
                    keyDic[key] = min(keyDic[key] ?? 0, idx+1)
                }
            }
        }
    }
    
    var result = [Int]()
    for target in targets {
        var temp = 0
        for t in target {
            if keyDic[t] == nil {
                temp = -1
                break
            } else {
                temp += keyDic[t] ?? 0
            }
        }
        result.append(temp)
    }
    return result
}

//          1       2
//solution(["ABACD", "BCEFD"], ["ABCD", "AABB"])
//print(solution(["AA"], ["BA"]))
//print(solution(["AGB", "BSSS"],["AGZ", "BSSS"]))
print(solution(["ABACD", "BCEFD"], ["XABCD", "AABB"])) //-1, 4
