//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/05.
//https://www.acmicpc.net/problem/1302

import Foundation

func boj1302() {
    let n = Int(readLine()!)!

    var books: [String:Int] = [:]
    for _ in 0..<n {
        let book = readLine()!
        if books[book] == nil {
            books[book] = 1
        } else {
            books[book]! += 1
        }
    }
    let sorted = books.sorted { first, second in
        if first.value == second.value {
            return first.key < second.key
        }
        return first.value > second.value
    }
    print(sorted[0].key)
}

