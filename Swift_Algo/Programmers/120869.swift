//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/27.
//https://school.programmers.co.kr/learn/courses/30/lessons/120869

import Foundation

func solution(_ spell:[String], _ dic:[String]) -> Int {
    let joinSpell = spell.sorted().joined()
    for d in dic {
        let arr: [String] = d.map { String($0) }
        let joinDic = arr.sorted().joined()
        if joinDic == joinSpell {
            return 1
        }
    }
    return 2
}

//print(solution(["s", "o", "m", "d"], ["moos", "dzx", "smm", "sunmmo", "som"]))
//print(solution(["z", "d", "x"], ["def", "dww", "dzx", "loveaw"]))

//참고풀이 set 사용!
func solution2(_ spell:[String], _ dic:[String]) -> Int {
    return dic.filter { Set($0) == Set(spell.map { Character($0) })}.isEmpty ? 2 : 1
}

//print(solution2(["z", "d",print(solution(["z", "d", "x"], ["def", "dww", "dzx", "loveaw"])) "x"], ["def", "dww", "dzx", "loveaw"]))
