//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/03/03.
//https://school.programmers.co.kr/learn/courses/30/lessons/118666?language=swift

import Foundation

func solution(_ survey:[String], _ choices:[Int]) -> String {
    var scoreList = [String: Int]()
    let personList = [["R","T"], ["C", "F"], ["J", "M"], ["A", "N"]]
    for (type, score) in zip(survey, choices) {
        let type = type.map { String($0) }
        if score > 4 {
            scoreList[type[1], default: 0] += score - 4
        } else if score < 4 {
            scoreList[type[0], default: 0] += 4 - score
        }
    }
    var answer = ""
    for person in personList {
        let p1 = scoreList[person[0]] ?? 0
        let p2 = scoreList[person[1]] ?? 0
        print(p1, person[0], p2, person[1])
        if p1 >= p2 {
            answer += person[0]
        } else {
            answer += person[1]
        }
    }
    return answer
}

//print(solution(["AN", "CF", "MJ", "RT", "NA"], [5, 3, 2, 7, 5]))
//print(solution(    ["TR", "RT", "TR"], [7, 1, 3]))
