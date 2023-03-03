//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/09.
//https://school.programmers.co.kr/learn/courses/30/lessons/12973

import Foundation

func solution(_ s:String) -> Int{
    var answer = 0
    var stack = [Character]()
    for ch in s {
        if stack.isEmpty {
            stack.append(ch)
            continue //뒤에꺼 실행 x
        }
        if stack.last! == ch {
            stack.removeLast() //2개 연속이므로 걍 제거..
        } else { //다르면
            stack.append(ch) //값 넣음
        }
    }
    if stack.count == 0 {
        answer = 1
    }
    return answer
}

//print(solution("baabaa"))
//print(solution("cdcd"))
