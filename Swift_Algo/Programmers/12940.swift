//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/10.
// https://school.programmers.co.kr/learn/courses/30/lessons/12940
 
import Foundation

func gcd(_ a: Int, _ b: Int) -> Int {
    let v = a % b
    return 0 == v ? min(a, b) : gcd(b, v)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a,b)
}

func solution(_ n:Int, _ m:Int) -> [Int] {
    return [gcd(n,m),lcm(n,m)]
}

//print(solution(3, 12))
