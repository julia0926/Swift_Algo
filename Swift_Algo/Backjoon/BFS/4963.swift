//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/06.
//https://www.acmicpc.net/problem/4963

import Foundation
//섬의 개수를 세자 1=땅, 0=바다

func boj4963() {
    //가로,세로,대각선으로 연결
    let dx = [1, 1, 0, -1, -1, -1, 0, 1]
    let dy = [0, 1, 1, 1, 0, -1, -1, -1]

    while true {
        //input
        let input = readLine()!.split(separator: " ").map { Int(String($0))! }
        let w = input[0]
        let h = input[1]
        if w == 0 && h == 0 { break }
        var map = [[Int]]()
        for _ in 0..<h {
            let p = readLine()!.split(separator: " ").map { Int(String($0))! }
            map.append(p)
        }
        
        func bfs(_ x: Int, _ y: Int) {
            var queue = [(x,y)]
            
            while !queue.isEmpty {
                let data = queue.removeFirst()
                let nowX = data.0
                let nowY = data.1
            =
                for i in 0..<8 {
                    let nx = nowX + dx[i]
                    let ny = nowY + dy[i]
                    if 0<=nx && 0<=ny && w<nx && h<ny && map[nx][ny] == 1 {
                        queue.append((nx,ny))
                        map[nx][ny] = 0 //방문처리
                    }
                }
            }
        }
        var result: Int = 0
        for i in 0..<h {
            for j in 0..<w {
                if map[i][j] == 1 {
                    result += 1
                    bfs(i,j)
                }
            }
        }
        print(result)
    }

}
