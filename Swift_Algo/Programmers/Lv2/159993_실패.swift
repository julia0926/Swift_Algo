//
//  159993.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/159993

import Foundation

func solution(_ maps:[String]) -> Int {
    var map = maps.map { Array($0).map { String($0) } }
    var start = [Int]()
    var lever = [Int]()
    var exit = [Int]()
    for i in 0..<map.count {
        for j in 0..<map[0].count {
            if map[i][j] == "L" {
                lever = [i,j]
            } else if map[i][j] == "S" {
                start = [i,j]
            } else if map[i][j] == "E" {
                exit = [i,j]
            }
        }
    }
    var countMap = Array(repeating: Array(repeating: 0, count: maps[0].count), count: maps.count)
    
    let direction = [[0,1], [0,-1], [1,0], [-1,0]]
    func bfs(_ x: Int, _ y: Int, _ stop: [Int]) {
        var queue = [[Int]]()
        queue.append([x,y])
        map[x][y] = "O"
        
        while !queue.isEmpty {
            let data = queue.removeLast()
            let nowX = data[0]
            let nowY = data[1]
            print(data)
            
            for i in 0..<4 {
                let nx = direction[i][0] + nowX
                let ny = direction[i][1] + nowY
                if nx >= 0 && ny >= 0 && nx < map.count && ny < map[0].count && map[nx][ny] == "O" {
                    queue.append([nx, ny])
                    countMap[nx][ny] = countMap[nowX][nowY] + 1
                    map[nx][ny] = "X"
                }
            }
        }
    }
    
    bfs(start[0], start[1], lever)
    print(countMap)
    return 0

}

//solution(["SOOOL","XXXXO","OOOOO","OXXXX","OOOOE"])
//print(solution(["LOOXS","OOOOX","OOOOO","OOOOO","EOOOO"]))
