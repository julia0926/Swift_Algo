//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/07.
//https://school.programmers.co.kr/learn/courses/30/lessons/42578?language=swift

import Foundation
//의상이름-종류
func solution(_ clothes:[[String]]) -> Int {
    var dic: [String:Int] = [:]
    for cloth in clothes {
        if dic[cloth[1]] == nil {
            dic[cloth[1]] = 1
        } else {
            dic[cloth[1]]! += 1
        }
    }
    //옷X하의 경우의수
    var result = 1
    for (_, value) in dic {
        result *= (value+1)
    }
    return result - 1 //하나도 안입는 경우의수
}

//참고풀이
func solution2(_ clothes:[[String]]) -> Int {
    let counts = Set(clothes.compactMap({ $0.last})).map ({ category in //의상종류의 중복을 제거하고
        return clothes.filter({ $0.last! == category}).count + 1 
    })
    print(counts)
    return 0
}

solution2([["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]])
//solution([["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]])
