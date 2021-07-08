//
//  main.swift
//  排序_插入排序
//
//  Created by YueWen on 2021/7/8.
//

import Foundation


//MARK: 插入排序
/// 升序
func InsertSort(arr: inout [Int]) {

    let count = arr.count
    if count <= 1 { return }
    
    //开始插入排序的外层遍历
    for i in 1..<count {
        //拿到当前循环的前一个
        var j = i - 1
        //获取当前循环使用值
        let value = arr[i]
        //开始循环，j(i-1) >= 0
        while j >= 0 {
            //如果arr[j]的值大于value，说明大的在前，需要替换位置
            if arr[j] > value {
                //将大的值赋值到后面即可
                arr[j + 1] = arr[j]
            } else {
                break //跳出即可
            }
            j -= 1 //递减一次对比
        }
        
        arr[j + 1] = value
    }
}


var s = [9,1,11,2,3,4,8,7,18,16]
InsertSort(arr: &s)
let o = 0
