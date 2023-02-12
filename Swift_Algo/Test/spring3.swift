//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/11.
//

import Foundation



func solution(_ queries:[[Int]]) -> [Int] {
    func isPanlindrom(_ arr: [Int]) -> Bool {
        if arr == arr.reversed() {
            return true
        } else {
            return false
        }
    }
    
    for query in queries {
        let arr = query.filter { $0 != 0 }
        while isPanlindrom(arr) {
            
        }
    }
    return []
}


func solution3(_ queries:[[Int]]) -> [Int] {
    var result = [Int]()
    for query in queries {
        var sumVal = query.reduce(0, +)
        if sumVal % 2 != 0 {
            result.append(1)
        } else {
            result.append(0)
        }
    }
    return result
}



solution([[0, 2, 0, 1], [0, 1, 0, 1]])
