//
//  main.swift
//  力扣20_有效的括号
//
//  Created by YueWen on 2021/7/2.
//

/**
 ```
 给定一个只包括 '('，')'，'{'，'}'，'['，']' 的字符串 s ，判断字符串是否有效。

 有效字符串需满足：

 左括号必须用相同类型的右括号闭合。
 左括号必须以正确的顺序闭合。
  

 示例 1：

 输入：s = "()"
 输出：true
 示例 2：

 输入：s = "()[]{}"
 输出：true
 示例 3：

 输入：s = "(]"
 输出：false
 示例 4：

 输入：s = "([)]"
 输出：false
 示例 5：

 输入：s = "{[]}"
 输出：true
  

 提示：

 1 <= s.length <= 104
 s 仅由括号 '()[]{}' 组成
 ```
 */

import Foundation

class Solution {
    ///
    func isValid(_ s: String) -> Bool {
        ///拆成字符串
        let chars = Array(s)
        var stack = [Character]()
        //开始遍历
        for s in chars {
            //如果s为左括号，入栈即可
            if s == "(" || s == "[" || s == "{" {
                stack.append(s)
                continue
            }
            //如果为小括号
            if s == ")" && stack.last != "(" {
                return false
            }
            
            //如果为又括号
            if s == "]" && stack.last != "[" {
                return false
            }
            
            //如果为又括号
            if s == "}" && stack.last != "{" {
                return false
            }
            //出栈即可
            let _ = stack.popLast()
        }
        
        return stack.isEmpty
    }
}

let i = Solution().isValid("()")
let o = 1

