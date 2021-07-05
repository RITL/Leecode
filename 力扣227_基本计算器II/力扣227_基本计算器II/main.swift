//
//  main.swift
//  力扣227_基本计算器II
//
//  Created by YueWen on 2021/7/3.
//

/**
 ```
 给你一个字符串表达式 s ，请你实现一个基本计算器来计算并返回它的值。

 整数除法仅保留整数部分。

 示例 1：

 输入：s = "3+2*2"
 输出：7
 示例 2：

 输入：s = " 3/2 "
 输出：1
 示例 3：

 输入：s = " 3+5 / 2 "
 输出：5
  
 提示：

 1 <= s.length <= 3 * 105
 s 由整数和算符 ('+', '-', '*', '/') 组成，中间由一些空格隔开
 s 表示一个 有效表达式
 表达式中的所有整数都是非负整数，且在范围 [0, 231 - 1] 内
 题目数据保证答案是一个 32-bit 整数
 ```
 */

import Foundation

// Error

class Solution {
    
    func calculate(_ s: String) -> Int {
        //使用栈进行匹配
        
        /// c1的优先级是否高于c2
        func isGreater(c1: Character, c2: Character) -> Bool {
            switch c1 {
            //c1是乘除
            case "*", "/": return ("+" == c2 || "-" == c2)
            default: return false
            }
        }
        
        
        /// 进行运算
        func calculate(num1: Int, num2: Int, operator: Character) -> Int {
            switch `operator` {
            case "+": return num1 + num2
            case "-": return num1 - num2
            case "*": return num1 * num2
            case "/": return num2 != 0 ? num1 / num2 : 0
            default: return 0
            }
        }
        
        /// 存储数字
        var numbers = [Int]()
        /// 存储操作符
        var operators = [Character]()
        /// 标记位标记上一个是否是数字
        var flag = false
        /// 进行遍历
        for c in Array(s) {
            // 拦截空格
            if c == " " { continue }
            //如果是数字
            if let number = Int("\(c)") {
                //上一个是否是数字
                if flag, let lastNumber = numbers.popLast() {
                    numbers.append(lastNumber * 10 + number); continue
                }
                flag = true
                //如果前一个为 - 需要取反
                let isReduce = operators.last == "-"
                let num = isReduce ? -1 : 1
                if isReduce {
                    operators.popLast()
                    operators.append("+")
                }
                //修改操作栈
                numbers.append(number * num); continue
            }
            //如果是操作符
            flag = false
            //与上一个操作符作对比,如果当前的运算符优先级没有高于栈顶，则进行计算即可
            if let lastOp = operators.last, isGreater(c1: lastOp, c2: c) {
                //开始计算
                if let num2 = numbers.popLast(), let num1 = numbers.popLast() {
                    //将结果压入栈顶
                    numbers.append(calculate(num1: num1, num2: num2, operator: lastOp))
                }
                //压入符号栈
                operators.append(c)
            } else {
                operators.append(c)
            }
        }
        //进行计算
        while let lastOp = operators.popLast(), let num2 = numbers.popLast(), let num1 = numbers.popLast() {
            numbers.append(calculate(num1: num1, num2: num2, operator: lastOp))
        }
        
        //返回最终结果即可
        return numbers.popLast() ?? 0
    }
}


let i = Solution().calculate("0-2147483647")

let u = 0
