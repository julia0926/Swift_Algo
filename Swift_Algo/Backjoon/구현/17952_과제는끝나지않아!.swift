//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/05.
//https://www.acmicpc.net/problem/17952

import Foundation

//최근순
//중단 -> 새로운 과제
//새로운과제 끝 -> 이전과제 이어서
//결과 : 과제 몇분받을지 계산

func boj17952() {
    let n = Int(readLine()!)!

    var answer = 0
    var stack = [[Int]]()

    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        if input[0] == 1 {
            stack.append([input[1], input[2]])
        }
        
        if !stack.isEmpty {
            let data = stack.popLast()!
            let score = data[0]
            let leftTime = data[1] - 1
            if leftTime == 0 {
                answer += score
            } else {
                stack.append([score, leftTime])
            }
        }
    }

    print(answer)

}
