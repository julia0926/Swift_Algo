//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/02/08.
//

import Foundation

func solution(_ number:String, _ k:Int) -> String {
    var stack = [String]()
    let numberList = number.map { String($0) }
    var k = k
    for n in numberList {
        //stack에 들어간 이전값과 < 현재값을 비교 : 현재가 더 클때까지 stack값 제거하고 지워야할 k 개수도 -1 줄임
        while !stack.isEmpty && Int(stack.last!)! < Int(n)! && k > 0 {
            stack.removeLast()
            k -= 1
        }
        stack.append(n)
    }
    print(stack, k)
    if k > 0 { //지워야 할 개수가 남아있다면
        stack.removeLast(k) //그만큼 끝 값을 제거
    }
    return stack.joined()
}
print(solution("4321", 1)) //432
