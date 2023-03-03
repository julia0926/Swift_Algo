//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/11.
//
//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/11.
//

import Foundation

func solution(_ _grid: [String]) -> Int {
    let rowLen = _grid.count
    let colLen = _grid[0].count
    var grid = [[String]]()
    for g in _grid {
        let temp = g.map { String($0) }
        grid.append(temp)
    }
    var visited = Array(repeating: Array(repeating: false, count: colLen), count: rowLen)
    var answer = 0
    //1이면 내부, 2이면 내부아님
    func dfs(_ x: Int, _ y: Int) -> Bool {
        if grid[x][y] == "#" { //도형 내부
            return true
        }
        if grid[x][y] == "" { //도형 외부로 파악
            return false
        }
        
        if visited[x][y] { //부모 칸 무시
            return true
        }
        visited[x][y] = true //현재 방문처리
        
        let dd = [[-1,0], [1,0], [0,-1], [0,1]]
        for d in dd {
            let nx = x + d[0]
            let ny = y + d[1]
            
            if nx < 0 || nx >= rowLen || ny < 0 || ny >= colLen || !dfs(nx, ny){
                grid[nx][ny] = "" //외부임을 표시
                return false
            }
        }
        grid[x][y] = ""
        return true
    }
    
    for i in 0..<rowLen {
        for j in 0..<colLen {
            if dfs(i, j) {
                answer += 1
            }
        }
    }
    print(answer)
    return 0
}

//
//solution([".....####", "..#...###", ".#.##..##", "..#..#...", "..#...#..", "...###..."])
