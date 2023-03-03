//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/25.
//

import Foundation

func solution(_ movie: [String]) -> [String] {
    var dic: [String: Int] = [:]
    for mv in movie {
        dic[mv, default: 0] += 1
    }
    let sortedDic = dic.sorted {
        if $0.value == $1.value {
            return $0.key < $1.key
        }
        return $0.value > $1.value
    }
    var result: [String] = []
    
    for movie in sortedDic {
        result.append(movie.key)
    }
    return result
}


//print(solution(["spy","ray","spy","room","once","ray","spy","once"]))
