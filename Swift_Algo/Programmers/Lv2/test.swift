//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/11.
//

import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    if b == 0 {
        return a
    } else {
        return gcd(b, a%b)
    }
}

func solution(_ arrayA:[Int], _ arrayB:[Int]) -> Int {
    var maxVal = 0
    for i in 1..<arrayA.count {
        maxVal = max(maxVal,gcd(arrayA[arrayA.index(arrayA.startIndex, offsetBy: i-1)],
              arrayA[arrayA.index(arrayA.startIndex, offsetBy: i)]))
    }
    print(maxVal)
    for b in arrayB {
        if b % maxVal == 0 {
            return 0
        }
    }
    return maxVal

}

//print(solution([20, 40, 10], [5, 17]))
//print(solution([14, 35, 119], [18, 30, 102]))
//print(solution([10,17], [5,20]))
//print(solution([10,20], [5,17]))
