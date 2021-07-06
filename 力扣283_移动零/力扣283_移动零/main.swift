//
//  main.swift
//  力扣283_移动零
//
//  Created by YueWen on 2021/7/6.
//

/**
 ```
 给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

 示例:

 输入: [0,1,0,3,12]
 输出: [1,3,12,0,0]
 说明:

 必须在原数组上操作，不能拷贝额外的数组。
 尽量减少操作次数。
 ```
 */

import Foundation

class Solution {
        
    //不使用额外数组
    func moveZeroes(_ nums: inout [Int]) {
        guard nums.count > 1 else { return }
        var j = 0
        //开始遍历交换
        for i in 0..<nums.count {
            //如果当前的位置不为0
            let num = nums[i]
            //进行对比
            if num != 0 {
                nums[j] = num
                j += 1
            }
        }
        //进行0的填充
        for i in j..<nums.count {
            nums[i] = 0
        }
    }
}

var a1 = [1,2,0,3,4,5]
let i1 = Solution().moveZeroes(&a1)

var a2 = [0,0,0,0,1]
let i2 = Solution().moveZeroes(&a2)

let i = 0
