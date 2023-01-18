//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/18.
//

import Foundation

func solution(_ common:[Int]) -> Int {
    let last = common[common.count-1]
    if common[1] - common[0] == common[2] - common[1] {
        return last+(common[1] - common[0])
    } else {
        return last * (common[1] / common[0])
    }
}

//print(solution([1,2,3,4]))
//print(solution([2,4,8]))
