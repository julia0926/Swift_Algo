//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/20.
//  https://school.programmers.co.kr/learn/courses/30/lessons/120894

import Foundation

func solution(_ numbers:String) -> Int64 {
    let alphaDic: [String:String] = ["zero": "0", "one": "1", "two": "2", "three": "3", "four": "4", "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"]
    var copy = numbers
    for (key, val) in alphaDic {
        if numbers.contains(key) {
            copy = copy.replacingOccurrences(of: key, with: val)
        }
    }

    return Int64(Int(copy)!)
}

solution("onetwothreefourfivesixseveneightnine")
