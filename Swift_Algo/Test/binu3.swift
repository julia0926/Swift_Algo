//
//  main.swift
//  Swift_Algo
//
//  Created by Julia on 2023/01/25.
//

import Foundation

func solution(_ phone_number: String) -> Int {
    let arr: [String] = phone_number.map { String($0) }
    switch phone_number.count {
    case 13: //type 1
        guard arr[3] == "-", arr[8] == "-" else { return -1 }
        guard arr[0...2].joined() == "010" else { return -1 }
        return 1
    case 11: //type 2
        guard arr[0] == "0", arr[1] == "1", arr[2] == "0" else { return -1 }
        return 2
    case 16:
        guard arr[0...6].joined() == "+82-10-" else { return -1 }
        guard arr[11] == "-" else { return -1 }
        return 3
    default:
        return -1
    }
}

//print(solution("01012345678"))
print(solution("+82-010-3434-2323"))
