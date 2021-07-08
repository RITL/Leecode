//
//  main.swift
//  排序_冒泡排序
//
//  Created by YueWen on 2021/7/8.
//

import Foundation

print("Hello, World!")


//MARK: 冒泡排序
/// 升序
func BubbleSort(arr: inout [Int]) {
    
    let count = arr.count
    if count <= 1 { return }
    
    //开始冒泡
    for i in 0..<count {
        for j in 0..<(count - i - 1) {
            //开始对比
            if arr[j + 1] < arr[j] {
                let temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
}

var s = [9,1,11,2,3,4,8,7,18,16]
BubbleSort(arr: &s)
let o = 0

