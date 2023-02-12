//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/12.
//

import Foundation

func bubbleSort(_ array: inout [Int]) {
    for i in 0..<array.count-1 { //스캔할 원소
        var isSwap = false
        for j in 0..<(array.count-i-1) { //비교대상
            if array[j] > array[j+1] {
                array.swapAt(j, j+1)
                isSwap = true
            }
        }
        if !isSwap { //다 돌았는데도 더이상 바뀌지 않았으면 정렬 다됨!
            return
        }
    }
}
