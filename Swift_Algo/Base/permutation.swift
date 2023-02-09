//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/09.
//

import Foundation


func stack_permutation<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    var result = [[T]]()
    if array.count < n { return result }
    
    var stack: [([T], [Bool])] = array.enumerated().map {
        var visited = Array(repeating: false, count: array.count)
        visited[$0.offset] = true
        return ([$0.element], visited)
    }
    
    while stack.count > 0 {
        let now = stack.removeLast()
        
        let elements = now.0
        var visited = now.1
        
        if elements.count == n {
            result.append(elements)
            continue
        }
        
        for i in 0...array.count-1 {
            if visited[i] { continue }
            visited[i] = true
            stack.append((elements + [array[i]], visited))
            visited[i] = false
        }
    }
    return result.reversed()
}

func recursive_permutation<T: Comparable>(_ array: [T], _ n: Int) -> [[T]] {
    
    var result = [[T]]()
    if array.count < n { return result }
    
    var visited = Array(repeating: false, count: array.count)

    func dfs(_ now: [T]) {
        if now.count == n {
            result.append(now)
            return
        }
        
        for i in 0..<array.count {
            if visited[i] {
                continue
            } else {
                visited[i] = true
                dfs(now + [array[i]])
                visited[i] = false
            }
        }
    }
    dfs([])
    return result
}

print(recursive_permutation(["가","나","다"], 2))
