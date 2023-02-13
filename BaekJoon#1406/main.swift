//
//  main.swift
//  BaekJoon#1406
//
//  Created by 김병엽 on 2023/02/14.
//
// Reference: https://didu-story.tistory.com/178

import Foundation

func solution() {
    
    var leftArray = readLine()!
    let testCase = Int(readLine()!)!
    var rightArray: [Character] = []
    
    for _ in 0..<testCase {
        
        let console = readLine()!
        
        if console == "L" {
            if !leftArray.isEmpty {
                rightArray.append(leftArray.removeLast())
            }
        } else if console == "D" {
            if !rightArray.isEmpty {
                leftArray.append(rightArray.removeLast())
            }
        } else if console == "B" {
            if !leftArray.isEmpty {
                leftArray.removeLast()
            }
        } else {
            leftArray.append(console.last!)
        }
    }
    
    print(leftArray + rightArray.reversed())
}

solution()
