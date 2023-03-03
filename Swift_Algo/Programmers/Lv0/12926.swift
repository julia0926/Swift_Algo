//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/09.
//

import Foundation

//내코드
func solution(_ s:String, _ n:Int) -> String {
    var result = ""
    for ch in s {
        if ch.isLetter {
            var numTemp = 0
            numTemp = Int(UnicodeScalar(String(ch))!.value) + n
            if ch.isUppercase && numTemp > 90 || numTemp > 122{
                numTemp -= 26
            }
            result += String(UnicodeScalar(numTemp)!)
        } else {
            result += " "
        }
        
        
    }
    return result
}


//print(solution("AB", 1))
//print(solution("z", 1))
//print(solution("Z", 1))
//print(solution("a B z", 4))

//참고코드
func solution2(_ s:String, _ n:Int) -> String {
    let alpha = "abcdefghijklmnopqrstuvwxyz".map { $0 }
    return String(s.map {
        guard let idx = alpha.firstIndex(of: Character($0.lowercased())) else { return $0 } //소문자의 인덱스를 찾아서
        let letter = alpha[(idx+n)%alpha.count] //배열에서 n더한 문자열 찾음
        return $0.isUppercase ? Character(letter.uppercased()) : letter //입력이 대문자라면 바꿔서, 아니라면 그냥
    })
    
}
//print(solution2("a B z", 4))
