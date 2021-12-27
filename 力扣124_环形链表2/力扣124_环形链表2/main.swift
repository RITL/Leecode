//
//  main.swift
//  力扣124_环形链表2
//
//  Created by YueWen on 2021/12/24.
//

import Foundation

/**
 给定一个链表，返回链表开始入环的第一个节点。 如果链表无环，则返回 null。
 
 如果链表中有某个节点，可以通过连续跟踪 next 指针再次到达，则链表中存在环。 为了表示给定链表中的环，评测系统内部使用整数 pos 来表示链表尾连接到链表中的位置（索引从 0 开始）。如果 pos 是 -1，则在该链表中没有环。注意：pos 不作为参数进行传递，仅仅是为了标识链表的实际情况。
 
 不允许修改 链表。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/linked-list-cycle-ii
 */

/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
    func detectCycle(_ head: ListNode?) -> ListNode? {
        
        //使用快慢指针
        var slow = head
        var fast = head
        
        while(fast != nil) {
            
            slow = slow?.next
            //非环形
            if(fast?.next == nil) {
                return nil
            }
            fast = fast?.next?.next
            //环形
            if(fast === slow) {
                //找相遇点即为环形入口
                var prev = head
                while(prev !== slow) {
                    prev = prev?.next
                    slow = slow?.next
                }
                return prev
            }
        }
        return nil
    }
}

