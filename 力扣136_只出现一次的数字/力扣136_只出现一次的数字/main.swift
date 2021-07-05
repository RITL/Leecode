//
//  main.swift
//  力扣136_只出现一次的数字
//
//  Created by YueWen on 2021/7/5.
//

/**
 ```
 给定一个非空整数数组，除了某个元素只出现一次以外，其余每个元素均出现两次。找出那个只出现了一次的元素。

 说明：

 你的算法应该具有线性时间复杂度。 你可以不使用额外空间来实现吗？

 示例 1:

 输入: [2,2,1]
 输出: 1
 示例 2:

 输入: [4,1,2,1,2]
 输出: 4
 ```
 */

/**
 思路:
 
 1、交换律：a ^ b ^ c <=> a ^ c ^ b
 2、任何数于0异或为任何数 0 ^ n => n
 3、相同的数异或为0: n ^ n => 0

 var a = [2,3,2,4,4]

 2 ^ 3 ^ 2 ^ 4 ^ 4等价于 2 ^ 2 ^ 4 ^ 4 ^ 3 => 0 ^ 0 ^3 => 3
 
 */

import Foundation

class Solution {
    
    func singleNumber(_ nums: [Int]) -> Int {
        //开始遍历，然后异或即可
        var a = 0
        for num in nums {
            a = a ^ num
        }
        return a
    }
}


print(Solution().singleNumber([2,3,2,4,4]))
let i = 0
