//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/131704


import Foundation

func solution(_ order:[Int]) -> Int {
    var answer = 0
    var count = 1
    var stack = [Int]() //보조 벨트
    
    for o in order {
        while count <= o {
            stack.append(count)
            count += 1
        }
        if o == stack.last! {
            answer += 1
            stack.removeLast()
        } else {
            break
        }
    }
    return answer
}

//solution([4,3,1,2,5]) // 2
