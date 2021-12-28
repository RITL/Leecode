//
//  main.swift
//  剑指09_用两个栈实现队列
//
//  Created by YueWen on 2021/12/28.
//

/*
 用两个栈实现一个队列。队列的声明如下，请实现它的两个函数 appendTail 和 deleteHead ，分别完成在队列尾部插入整数和在队列头部删除整数的功能。(若队列中没有元素，deleteHead 操作返回 -1 )

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/yong-liang-ge-zhan-shi-xian-dui-lie-lcof
 */

import Foundation

class CQueue {

    var input = [Int]()
    var output = [Int]()
    
    init() {}
    
    // 添加
    func appendTail(_ value: Int) {
        input.append(value)
    }
    
    func deleteHead() -> Int {
        //出栈添加
        if(output.isEmpty && !input.isEmpty) {
            for _ in 0..<input.count {
                output.append(input.popLast()!)
            }
        }
        if(output.isEmpty) {
            return -1
        }
        return output.popLast()!
    }
}

/**
 * Your CQueue object will be instantiated and called as such:
 * let obj = CQueue()
 * obj.appendTail(value)
 * let ret_2: Int = obj.deleteHead()
 */

