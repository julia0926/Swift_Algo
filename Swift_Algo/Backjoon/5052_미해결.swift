//
//  5052.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/05.
//https://www.acmicpc.net/problem/5052 - 트라이 자료구조 사용!

import Foundation
//접두어가 없어야 한다!!

func boj5052() {
    let t = Int(readLine()!)!

    for _ in 0..<t {
        
        let n = Int(readLine()!)!
        var phonebook: [Int] = []
        var prefix: Int = 0
        for _ in 0..<n{
            phonebook.append(Int(readLine()!)!)
        }
        var result: String = ""
        for phone in phonebook.sorted() {
            if prefix == 0 {
                prefix = phone
            } else {
                if String(phone).contains(String(prefix)) {
                    print("NO")
                    result = "YES"
                    break
                }
            }
        }
        if result != "" {
            result = "YES"
        }
        print(result)
    }

}
