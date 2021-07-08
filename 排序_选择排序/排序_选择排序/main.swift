//
//  main.swift
//  排序_选择排序
//
//  Created by YueWen on 2021/7/8.
//

import Foundation

//MARK: 选择排序
/// 升序
func ChooseSort(arr: inout [Int]) {
    let count = arr.count
    if count <= 1 { return }
    
    //开始遍历
    for i in 0..<(count-1) {
        var k = i
        var j = i + 1
        while j < count {
            if arr[k] > arr[j] {
                k = j
            }
            j += 1
        }
        if k != i {
            let temp = arr[i]
            arr[i] = arr[k]
            arr[k] = temp
        }
    }
}


var s = [9,1,11,2,3,4,8,7,18,16]
ChooseSort(arr: &s)
let o = 0
