//
//  main.swift
//  offer10_青蛙跳台阶问题
//
//  Created by YueWen on 2021/12/29.
//

/*
 一只青蛙一次可以跳上1级台阶，也可以跳上2级台阶。求该青蛙跳上一个 n 级的台阶总共有多少种跳法。

 答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/qing-wa-tiao-tai-jie-wen-ti-lcof
 */

//采用动态规划即可

import Foundation

class Solution {
    
    func numWays(_ n: Int) -> Int {
        //如果只跳0和1
        if(n < 2) {
            return 1
        }
        //开始计算
        var a = [1,1]
        for _ in 2...n {
            (a[0],a[1]) = (a[1],(a[0] + a[1]) % 1000000007)
        }
        return a[1]
    }
}


//let i = Solution().numWays(2)
//let i = Solution().numWays(7)
let i = Solution().numWays(0)
let o = 1
