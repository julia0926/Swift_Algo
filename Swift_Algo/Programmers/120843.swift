//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/02.
//https://school.programmers.co.kr/learn/courses/30/lessons/120843

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var piv = 0
    var result = 0
    for i in 0..<k {
        var index = piv+(i*2)
        if index >= numbers.count {
            index %= numbers.count
        }
        result = numbers[index]
    }
    return result
}

//solution([1,2,3,4], 2)
//solution([1, 2, 3, 4, 5, 6], 5)

//참고풀이

func solution(_ numbers:[Int], _ k:Int) -> Int {
    
    return 
}
