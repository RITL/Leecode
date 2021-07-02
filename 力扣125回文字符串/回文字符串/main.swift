//
//  main.swift
//  125题回文字符串
//
//  Created by YueWen on 2021/7/2.
//

/*
 ```
 给定一个字符串，验证它是否是回文串，只考虑字母和数字字符，可以忽略字母的大小写。

 说明：本题中，我们将空字符串定义为有效的回文串。

 示例 1:

 输入: "A man, a plan, a canal: Panama"
 输出: true
 示例 2:

 输入: "race a car"
 输出: false
 ```
 */


import Foundation

//回文字符串判断
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        /// 判断格式
        func isAllowed(s: Character) -> Bool {
            if ((s >= "0" && s <= "9") || (s >= "a" && s <= "z") || (s >= "A" && s <= "Z")) {
                return true
            }
            return false
        }
        
        
        //空表示合法的回文串
        guard !s.isEmpty, s.count > 1 else { return true }
        //转成char数组
        let chars = Array(s)
        var i = 0
        var j = chars.count - 1
        //开始遍历对比
        while i < j {
            //开始对比
            while !isAllowed(s: chars[i]) {
                i += 1
                //表示完全与j相同了，返回true
                if i >= j { return true }
            }
            while !isAllowed(s: chars[j]) {
                j -= 1
                if j <= i { return true }
            }
            //作对比
            if chars[i].lowercased() != chars[j].lowercased() {
                return false
            }
            //进行数据操作
            i += 1
            j -= 1
        }
        return true
    }
}

