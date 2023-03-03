//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/22.
//https://school.programmers.co.kr/learn/courses/30/lessons/120921

import Foundation

//내풀이
func solution(_ A:String, _ B:String) -> Int {
    if A == B {
        return 0
    } else {
        var arr: [String] = A.map { String($0) }
        let brr: [String] = B.map { String($0) }
        for i in 1...A.count {
            let pop: String = arr.popLast()!
            arr = [pop] + arr
            if arr == brr {
                return i
            }
        }
    }
    return -1
}

//참고풀이
func solution2(_ A:String, _ B:String) -> Int {
    let arr: [String] = (A+A).components(separatedBy: B) //두개 겹친게 B로 나눠진다면
    return arr.count == 1 ? -1 : arr[1].count //안나눠지면 -1, 나눠지면 오른쪽끝값 ..
}

//print(solution2("hello", "othell"))
