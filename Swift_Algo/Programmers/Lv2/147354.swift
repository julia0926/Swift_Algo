//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/07.
//https://school.programmers.co.kr/learn/courses/30/lessons/147354

import Foundation

//col은 오름차순, 첫번째기준 컬런값 내림차순
//값을 i로 나눈 나머지들의 합
//xor : 같으면 0, 다르면 1

func solution(_ data:[[Int]], _ col:Int, _ row_begin:Int, _ row_end:Int) -> Int {
    let sorted: [[Int]] = data.sorted {
        if $0[col-1] == $1[col-1] {
            return $0[0] > $1[0]
        }
        return  $0[col-1] < $1[col-1]
    }
    var sList = [Int]()
    for i in row_begin...row_end {
        var sum = 0
        for j in sorted[i-1] {
            sum += j%i
        }
//        sList.append(UInt8(sum))
        sList.append(sum)

    }
    var result = sList[0]
    for i in 1..<sList.count {
        result = result^sList[i]
    }
    print(result)
    return result
}

//solution([[2, 2, 6], [1, 5, 10], [4, 2, 9], [3, 8, 3]], 2, 2, 3)
