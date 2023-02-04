//
//  2021_72410.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/04.
//https://school.programmers.co.kr/learn/courses/30/lessons/72410?language=swift

import Foundation

func solution(_ new_id:String) -> String {
    var _new_id = new_id
        .lowercased() //1
        .replacingOccurrences(of: "[^a-z0-9-_.]", with: "", options: .regularExpression) //2
        
    while _new_id.contains("..") { //3 주의! 한번만 ..->.로 바꿔주고 ..가 있을때까지 바꿔주려면 while 추가
        _new_id = _new_id.replacingOccurrences(of: "..", with: ".")
    }
    _new_id = _new_id.trimmingCharacters(in: ["."]) //4
    if _new_id == "" {  _new_id += "a" } //5
    if _new_id.count >= 16 { //6
        _new_id = String(_new_id.prefix(15))
        while _new_id.last == "." {
            _new_id.removeLast()
        }
    }
    while _new_id.count <= 2{ //7
        _new_id.append(_new_id.last!)
    }
    return _new_id
}


solution("...!@BaT#*..y.abcdefghijklm")
