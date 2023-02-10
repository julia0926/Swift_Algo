//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/10.
//https://school.programmers.co.kr/learn/courses/30/lessons/150370?language=swift

import Foundation

//파기해야 할 개인정보
//모든 달은 28일

func calculateDate(_ date: String) -> Int {
    let arr = date.trimmingCharacters(in: [" "]).components(separatedBy: ".").map { Int($0)! }
    let year = (arr[0] - 2000) * 12 * 28
    let day = arr[1] * 28 + arr[2]
    return year + day
}

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    let today = calculateDate(today)
    print("today", today)
    var termsDic = [String:Int]() //타입: 일수
    for t in terms {
        let arr = t.components(separatedBy: " ")
        termsDic[arr[0]] = (Int(arr[1])!) * 28
    }
    var result = [Int]()
    for (idx, p) in privacies.enumerated() {
        var p = p
        let type = String(p.removeLast())
        let termDate = calculateDate(p)+termsDic[type]!-1
        //today 작거나 같으면 넣음
        if today > termDate {
            result.append(idx+1)
        }
    }
    return result
}

//solution("2022.05.19",
//         ["A 6", "B 12", "C 3"],
//         ["2021.05.02 A", "2021.07.01 B", "2022.02.19 C", "2022.02.20 C"])

//solution("2020.01.01",
//         ["Z 3", "D 5"],
//         ["2019.01.01 D", "2019.11.15 Z", "2019.08.02 D", "2019.07.01 D", "2018.12.28 Z"])
