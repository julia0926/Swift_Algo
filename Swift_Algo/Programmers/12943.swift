//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/09.
//

import Foundation


func solution(_ num:Int) -> Int {
    var n = num
    var count = 0
    while n != 1 {
        if count == 500 {
            break
        }
        if n % 2 == 0 {
            n /= 2
        } else {
            n *= 3
            n += 1
        }
        count += 1
    }
    return count < 500 ? count : -1
}
