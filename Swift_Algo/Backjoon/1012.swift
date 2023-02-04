//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/04.
//https://www.acmicpc.net/problem/1012

import Foundation

func run() {
    let t = Int(readLine()!)!
    
    let dx = [0,0,1,-1]
    let dy = [-1,1,0,0]

    for _ in 0..<t {
        let input = readLine()!.components(separatedBy: " ").map { Int($0)! }
        let farmX = input[0]
        let farmY = input[1]
        let k = input[2]
        var farm = Array(repeating: Array(repeating: 0, count: farmY), count: farmX)
        
        for _ in 0..<k {
            let potition = readLine()!.split(separator: " ").map { Int(String($0))! }
            farm[potition[0]][potition[1]] = 1
            
        }
        
        func bfs(_ x: Int, _ y: Int) {
            var queue = [[Int]]()
            queue.append([x,y])
            
            while !queue.isEmpty {
                let data = queue.removeFirst()
                let nowX = data[0]
                let nowY = data[1]
                
                
                for i in 0..<4 {
                    let nx = nowX + dx[i]
                    let ny = nowY + dy[i]
                    
                    if nx >= 0 && ny >= 0 && nx < farmX && ny < farmY && farm[nx][ny] == 1 {
                        queue.append([nx,ny])
                        farm[nx][ny] = 0
                    }
                }
            }
        }

        var count = 0
        for x in 0..<farmX {
            for y in 0..<farmY {
                if farm[x][y] == 1 {
                    bfs(x,y)
                    count += 1
                }
            }
        }
        print(count)
    }

}

//run()
