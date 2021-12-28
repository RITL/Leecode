//
//  main.swift
//  offer_10_斐波那契数列
//
//  Created by YueWen on 2021/12/28.
//

/*
 写一个函数，输入 n ，求斐波那契（Fibonacci）数列的第 n 项（即 F(N)）。斐波那契数列的定义如下：

 F(0) = 0,   F(1) = 1
 F(N) = F(N - 1) + F(N - 2), 其中 N > 1.
 斐波那契数列由 0 和 1 开始，之后的斐波那契数就是由之前的两数相加而得出。

 答案需要取模 1e9+7（1000000007），如计算初始结果为：1000000008，请返回 1。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fei-bo-na-qi-shu-lie-lcof
 */
import Foundation

class Solution {
    func fib(_ n: Int) -> Int {
        //f(0) = 0, f(1) = 1
        //如果是前2个
        if(n < 2) {
            return n
        }
        //三个临时变量
        let MOD = 1000000007
        var p = 0
        var q = 0
        var r = 1
      
        for _ in 2...n {
            p = q
            q = r
            r = (p + q) % MOD
        }
        
        return r
    }
}

