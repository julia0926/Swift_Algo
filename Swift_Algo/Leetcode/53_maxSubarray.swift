//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//https://leetcode.com/problems/maximum-subarray/

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    var array = Array(repeating: 0, count: nums.count)
    array[0] = nums[0]
    for i in 1..<nums.count {
        var temp = 0
        if array[i-1] > 0 { //이전 값이 양수일때만 더한다.
            temp = array[i-1]
        }
        array[i] = nums[i] + temp
    }
    return array.max() ?? 0
}

maxSubArray([-2,1,-3,4,-1,2,1,-5,4])
