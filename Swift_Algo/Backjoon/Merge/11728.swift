//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/12.
//https://www.acmicpc.net/problem/11728

import Foundation

func boj11728() {
    let size = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = size[0]
    let m = size[1]

    let a = readLine()!.split(separator: " ").map { Int(String($0))! }
    let b = readLine()!.split(separator: " ").map { Int(String($0))! }

    var answer = [Int]()
    var adx = 0
    var bdx = 0

    for _ in 0..<n+m {
        print(answer)
        //끝에 도달했을 때 남은거 체크
        if adx == a.count {
            answer.append(b[bdx])
            bdx += 1
        } else if bdx == b.count {
            answer.append(a[adx])
            adx += 1
        } else { //안 도달 했으면
            if bdx >= b.count || a[adx] > b[bdx] { //a의 값이 더 크면
                answer.append(b[bdx]) //더 작은 b값 넣음
                bdx += 1
            } else {
                answer.append(a[adx])
                adx += 1
            }
        }
        
    }

    print(answer)

}

