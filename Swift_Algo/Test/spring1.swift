//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/11.
//

//당첨자수

import Foundation

func solution(_ lotteries:[[Int]]) -> Int {
    var percent = [Double: Int]()
    var idx = [Int: Int]()
    for (i,lottery) in lotteries.enumerated() {
        var pang = 0.0
        if lottery[0] >= lottery[1]+1 { //당첨자수>=구매한사람 모두 당첨
            pang = 1
        } else {
            pang = Double(lottery[0])/Double(lottery[1]+1)
        }
        if percent[pang] != nil { //이미 있따면 더 큰값으로
            percent[pang] = max(lottery[2], percent[pang]!)
        } else {
            percent[pang] = lottery[2]
        }
        idx[lottery[2]] = i+1
    }
    var result = 0
    
    if percent.count == 1 {
        result = idx[percent.values.first!]!
    } else {
        let p = percent.sorted { $0.key > $1.key }[0].value
        result = idx[p]!
    }

    return result
}

//solution([[100,100,500],[1000,1000,100]])
//solution(
//    [[10, 19, 800], [20, 39, 200], [100, 199, 500]])
//solution(
//    [[50, 1, 50], [100, 199, 100], [1, 1, 500]])
