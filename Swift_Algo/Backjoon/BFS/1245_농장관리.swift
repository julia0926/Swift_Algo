//
//  1245_농장관리.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/05.
//https://www.acmicpc.net/problem/1245

import Foundation

func boj1245() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let w = input[0]
    let h = input[1]
    var map = Array(repeating: Array(repeating: 0, count: h), count: w)
    var visited = Array(repeating: Array(repeating: false, count: h), count: w)

    for i in 0..<w {
        let line = readLine()!.split(separator: " ").map { Int(String($0))! }
        for j in 0..<h {
            map[i][j] = line[j]
            if map[i][j] == 0 {
                visited[i][j] = true //0이라면 방문처리
            }
        }
    }

    let direction = [[-1, 0], [1, 0], [0, 1], [0, -1],
                     [1, 1], [-1, -1], [-1, 1], [1, -1]]
    var isPeak = true

    func bfs(_ x: Int, _ y: Int) {
        var queue = [[x, y]]
        while !queue.isEmpty {
            let data = queue.removeFirst()
            let nowX = data[0]
            let nowY = data[1]
            
            for dir in direction {
                let nx = nowX + dir[0]
                let ny = nowY + dir[1]
                
                if nx < 0 || ny < 0 || nx >= w || ny >= h { continue } //범위 벗어나면
                
                //현재 < 인접한 봉우리라면 산봉우리가 아님.. -> 순서가 중요!
                if map[x][y] < map[nx][ny] { isPeak = false }
                
                if visited[nx][ny] || map[x][y] != map[nx][ny] { continue } //방문했거나, 높이가 같지않으면 탐색X
                
                //높이가 모두 같은 방문한뒤에 산봉우리 수 1 증가 시킬 수 잇음.
                queue.append([nx, ny])
                visited[nx][ny] = true
            }
        }
        
    }

    var result = 0
    for i in 0..<w {
        for j in 0..<h {
            if !visited[i][j] {
                isPeak = true
                bfs(i, j)
                if isPeak { result += 1 }
            }
        }
    }
    print(result)

}

