//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/10.
//https://leetcode.com/problems/number-of-islands/description/

import Foundation

func numIslands(_ grid: [[Character]]) -> Int {
    var grid = grid
    func dfs(_ x: Int, _ y: Int) {
        //종료조건
        if 0 > x || x >= grid.count || 0 > y || y >= grid[0].count || grid[x][y] == "0"{
            return
        }
//        print(x,y)
        grid[x][y] = "0"
        dfs(x+1, y)
        dfs(x-1, y)
        dfs(x, y+1)
        dfs(x,y-1)
    }
    
    var answer = 0
    for i in 0..<grid.count {
        for j in 0..<grid[0].count {
            if grid[i][j] == "1" {
                dfs(i,j)
                answer += 1
            }
        }
    }
    print(answer)
    return 0
}


//numIslands( [
//    ["1","1","1","1","0"],
//    ["1","1","0","1","0"],
//    ["1","1","0","0","0"],
//    ["0","0","0","0","0"]
//])
//
//numIslands([
//    ["1","1","0","0","0"],
//      ["1","1","0","0","0"],
//      ["0","0","1","0","0"],
//      ["0","0","0","1","1"]])
