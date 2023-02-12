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
    var map = Array(repeating: Array(repeating: 0, count: colLen), count: rowLen)
    var answer = 0
    //1이면 내부, 2이면 내부아님
    func dfs(_ x: Int, _ y: Int) -> Bool {
        print("👾",map)
        if map[x][y] != 0 {
            return map[x][y] == 1 //도형의 내부인지 아닌지
        }
        if grid[x][y] == "#" { //도형 칸이면
            map[x][y] = 1
            return true
        }
        
        if visited[x][y] { //부모 칸 무시
            return true
        }
        visited[x][y] = true
        
        let dd = [[-1,0], [1,0], [0,-1], [0,1]]
        for d in dd {
            let nx = x + d[0]
            let ny = y + d[1]
            
            if nx < 0 || nx >= rowLen || ny < 0 || ny >= colLen || !dfs(nx, ny){
                map[x][y] = 2 //도형칸 아님
                return false
            }
        }
        map[x][y] = 1 //
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

solution([".....####", "..#...###", ".#.##..##", "..#..#...", "..#...#..", "...###..."])
