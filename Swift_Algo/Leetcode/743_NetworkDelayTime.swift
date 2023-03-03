//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//https://leetcode.com/problems/network-delay-time/

import Foundation

typealias nodeType = (Int, Int) //노드, 가중치

func networkDelayTime(_ times: [[Int]], _ n: Int, _ k: Int) -> Int {
    var graph = Array(repeating: [nodeType](), count: n+1)
    var distance = Array(repeating: Int(1e9), count: n+1)
    
    for time in times {
        graph[time[0]].append((time[1],time[2]))
    }
    
    var queue = [nodeType]()
    queue.append((0, k))
    distance[k] = 0 //시작점의 거리는 0임
    
    while !queue.isEmpty {
        queue.sort(by: { $0.0 > $1.0 }) //노드번호 오름차순 순으로
        let node = queue.removeFirst() //제일 작은값 제거
        let dist = node.0
        let now = node.1
        
        if distance[now] < dist { //현재 노드값이 더 최소값이라면 갱신안함
            continue
        }
        
        for graphNode in graph[now] {
            let cost = dist + graphNode.1
            
            if cost < distance[graphNode.0] { //거쳐가는게 더 최단비용이라면
                distance[graphNode.0] = cost //거쳐가는 비용으로 갱신
                queue.append((cost, graphNode.0))
            }
        }
    }
    distance.removeFirst()
    let answer: Int =  distance.max() ?? 0
    if answer == Int(1e9) {
        return -1
    }

    return answer
}

print(networkDelayTime([[2,1,1],[2,3,1],[3,4,1]], 4, 2))
