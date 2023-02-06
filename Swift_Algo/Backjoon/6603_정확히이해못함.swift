//
//  6603.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/06.
//https://www.acmicpc.net/problem/6603
//참고 : https://sapjilkingios.tistory.com/129

import Foundation
//오름차순으로 된 것만 뽑아야 한다.
func boj6603() {
    while true {
        var cases = readLine()!.split(separator: " ").map { Int(String($0))! }
        if cases == [0] {
            break
        }
        print(cases)
        let t = cases.removeFirst()
        var arr = [Int]()
        var visited = Array(repeating: false, count: t)
        
        func dfs(_ depth: Int, _ start: Int) {
            if arr.count == 6 {
                print(">🎉", arr)
                return
            }
     
            for i in start..<t{
                if !visited[i] {
                    visited[i] = true
                    arr.append(cases[i])
                    print(i, arr)
                    dfs(depth+1, i)
                    arr.removeLast()
                    visited[i] = false
                }
            }
        }
        dfs(0,0)

    }

}
