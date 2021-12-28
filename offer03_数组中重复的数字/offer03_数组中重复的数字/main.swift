//
//  main.swift
//  offer03_数组中重复的数字
//
//  Created by YueWen on 2021/12/28.
//

/*
 找出数组中重复的数字。


 在一个长度为 n 的数组 nums 里的所有数字都在 0～n-1 的范围内。数组中某些数字是重复的，但不知道有几个数字重复了，也不知道每个数字重复了几次。请找出数组中任意一个重复的数字。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/shu-zu-zhong-zhong-fu-de-shu-zi-lcof
 */

import Foundation

class Solution {
    
    func findRepeatNumber(_ nums: [Int]) -> Int {
        var set = Set<Int>()
        for num in nums {
            if set.contains(num) {
                return num
            }
            set.insert(num)
        }
        return -1
    }
}

