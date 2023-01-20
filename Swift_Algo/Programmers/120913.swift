//
//  test1.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/19.
//https://school.programmers.co.kr/learn/courses/30/lessons/120913

import Foundation

func solution(_ my_str:String, _ n:Int) -> [String] {
    var result: [String] = []
    var temp = ""
    for st in my_str {
        temp += String(st)
        if temp.count == n {
            result.append(temp)
            temp = ""
        }
    }
    if temp != "" {
        result.append(temp)
    }
    return result
}

//print(solution("abc1Addfggg4556b", 6))
