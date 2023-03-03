//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/10.
//https://school.programmers.co.kr/learn/courses/30/lessons/17677

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    let arr1 = str1.uppercased().map { String($0) }
    let arr2 = str2.uppercased().map { String($0) }
    
    //특수문자나 공백을 버림
    func makeDic(_ arr: [String]) -> [String]{
        var temp = [String]()
        for idx in 1..<arr.count {
            let startIdx = arr.index(arr.startIndex, offsetBy: idx)
            let st = arr[startIdx-1]+arr[startIdx]
            if st.filter({ $0.isLetter }).count == 2 {
                temp.append(st)
            }
            
        }
        return temp
    }
    let filterArr1 = makeDic(arr1)
    let filterArr2 = makeDic(arr2)
    
    if filterArr1.isEmpty && filterArr2.isEmpty {
        return 65536
    }
    //교집합 구하기
    var 교집합 = [String]()
    for i in filterArr1.indices {
        for j in filterArr2.indices {
            if filterArr1[i] == filterArr2[j] {
                교집합.append(filterArr1[i])
                break
            }
        }
    }
    //합집합 구하기
    for a in filterArr1.indices {
        
    }
    
//    print(교집합, filterArr1+filterArr2)
    let p1 = Double(교집합.count)
    let p2 = Double((filterArr1+filterArr2).count)
    print(p1, p2)
//    print(교집합, 합집합)
//    let t = 교집합/합집합
//    let t: Double = Double(set1.intersection(set2).count)/Double(set1.union(set2).count)
    let t = p1/p2
    return Int(t*65536)

}

////solution("FRANCE", "french")
//print(solution("aa1+aa2", "AAAA12"))
//print(solution("FRANCE", "french"))
