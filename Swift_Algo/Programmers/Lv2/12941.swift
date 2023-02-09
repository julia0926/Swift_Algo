//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/09.
//https://school.programmers.co.kr/learn/courses/30/lessons/12941

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var sortedA = A.sorted()
    var sortedB = B.sorted()
    
    var result = 0
    for _ in 0..<A.count {
        result += sortedA.removeFirst() * sortedB.removeLast()
    }
//    print(result)
    return result
}

//solution([1, 4, 2], [5, 4, 4])
//solution([1,2], [3,4])
