//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/05.
//

import Foundation

func boj2583() {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let m = input[0]
    let n = input[1]
    let k = input[2]

    var graph = Array(repeating: Array(repeating: 0, count: n), count: m)
    let direction = [[-1, 0], [1, 0], [0, 1], [0, -1]]
    // 먼저 모두 방문처리를함 bfs.. -> 그다음에 나머지 넓이를 또 bfs함

    for _ in 0..<k {
        let area = readLine()!.split(separator: " ").map { Int(String($0))! }
        let x1 = area[0]
        let y1 = area[1]
        let x2 = area[2]
        let y2 = area[3]
        
        for i in y1..<y2 {
            for j in x1..<x2 {
                graph[i][j] = 1 //색칠함
            }
        }
    }

    func bfs(_ x: Int, _ y: Int, _ cnt: Int) -> Int{
        var queue = [[x, y]]
        var cnt = cnt
        
        while !queue.isEmpty {
            let data = queue.removeFirst()
            let nowX = data[0]
            let nowY = data[1]
            
            for dir in direction {
                let nx = nowX + dir[0]
                let ny = nowY + dir[1]
                if 0<=nx && 0<=ny && m>nx && n>ny && graph[nx][ny] == 0 {
                    queue.append([nx,ny])
                    graph[nx][ny] = 1
                    cnt += 1
                }
            }
        }
        if cnt != 1 { cnt -= 1 }

        return cnt
    }

    var answer = [Int]()

    for i in 0..<m {
        for j in 0..<n {
            if graph[i][j] == 0 {
                answer.append(bfs(i,j, 1))
            }
        }
    }

    print(answer.count)
    for a in answer.sorted() {
        print(a, terminator: " ")
    }


}
