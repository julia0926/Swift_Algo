//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/10.
//https://leetcode.com/problems/letter-combinations-of-a-phone-number/description/

import Foundation

func letterCombinations(_ digits: String) -> [String] {
    if digits == "" {
       return []
   }
    let phoneDic = ["2":["a","b","c"],
                    "3":["d","e","f"],
                    "4":["g","h","i"],
                    "5":["j","k","l"],
                    "6":["m","n","o"],
                    "7":["p","q","r","s"],
                    "8":["t","u","v"],
                    "9":["w","x","y","z"]]
    var temp = ""
    let digitsArr = digits.map { String($0) }
    var result = [String]()
    func dfs(_ depth: Int) {
        if temp.count == digits.count {
            print(temp)
            result.append(temp)
        }
        for i in depth..<digits.count {
            let dicArr = phoneDic[digitsArr[i]]!
            for j in dicArr  {
                temp += j
                dfs(i+1)
                temp.removeLast()
            }
        }
    }
    dfs(0)
    return result
}


letterCombinations("23")
