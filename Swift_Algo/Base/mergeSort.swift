//
//  mergeSort.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/12.
//분할 -> O(N) + 합침 -> O(NlogN) = O(NlogN)


import Foundation

func mergeSort(_ array: [Int]) -> [Int] {
    if array.count <= 1 { return array }
    let mid = array.count / 2
    let left = Array(array[0..<mid])
    let right = Array(array[mid..<array.count])
    
    func merge(_ left: [Int], _ right: [Int]) -> [Int] {
        var left = left
        var right = right
        var result = [Int]()
        
        while !left.isEmpty && !right.isEmpty {
            if left[0] < right[0] {
                result.append(left.removeFirst())
            } else {
                result.append(right.removeFirst())
            }
        }
        print(result,left,right)
        // 왼쪽 배열의 요소가 남은 경우
         if !left.isEmpty {
             result.append(contentsOf: left)
         }
         
         // 오른쪽 배열의 요소가 남은 경우
         if !right.isEmpty {
             result.append(contentsOf: right)
         }
        return result
    }
    return merge(mergeSort(left), mergeSort(right))
}

//print(mergeSort([5,4,2,1,7]))
