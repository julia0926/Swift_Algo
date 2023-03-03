//
//  154539.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/06.
//https://school.programmers.co.kr/learn/courses/30/lessons/154539

import Foundation

//내가 풀이한 코드 -> 시간초과
func solution(_ numbers:[Int]) -> [Int] {
    var numbers = numbers
    var result: [Int] = []
    while !numbers.isEmpty {
        let piv = numbers.removeFirst()
        if numbers.isEmpty {
            result.append(-1)
        } else {
            //자신보다 크면서, 가장 가까이 있는 수
            var appendVal = -1
            for v in numbers {
                if v > piv {
                    appendVal = v
                    break
                }
            }
            result.append(appendVal)
        }
    }
    return result
}

//참고 풀이
func solution2(_ numbers:[Int]) -> [Int] {
    var answer = Array(repeating: -1, count: numbers.count) //초기값을 모두 -1로
    var stack: [(Int, Int)] = [(0, numbers[0])] //인덱스, 값
    
    for idx in 1..<numbers.count {
        while !stack.isEmpty && stack.last!.1 < numbers[idx] { //스택의 마지막(가까우면서) 자신보다 큰 수가 있다면
            answer[stack.last!.0] = numbers[idx] //그 스택의위치에
            stack.removeLast()
        }
        stack.append((idx, numbers[idx]))
    }
    print(answer)
    return []
}


//solution2([9, 1, 5, 3, 6, 2]) //[-1, 5, 6, 6, -1, -1]
