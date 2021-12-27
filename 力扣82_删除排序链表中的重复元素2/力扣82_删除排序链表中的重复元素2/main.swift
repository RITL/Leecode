//
//  main.swift
//  力扣82_删除排序链表中的重复元素2
//
//  Created by YueWen on 2021/12/27.
//


/**
 存在一个按升序排列的链表，给你这个链表的头节点 head ，请你删除链表中所有存在数字重复情况的节点，只保留原始链表中 没有重复出现 的数字。
 
 返回同样按升序排列的结果链表。
 */

import Foundation

/**
 * Definition for singly-linked list.
 */
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

class Solution {
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        let result = ListNode(-1, head)
        var pre: ListNode? = result
        var cur = head
        var flag = false
        
        while(cur != nil) {
            //如果相等，做标记
            if(cur?.val == cur?.next?.val) {
                cur?.next = cur?.next?.next
                flag = true
                
            } else {
                //如果不相等并且存在标记，需要删除本次的cur
                if(flag) {
                    pre?.next = cur?.next
                    flag = false
                }  else {
                    pre = cur //修改前置标记
                }
                cur = cur?.next
            }
        }
        return result.next
    }
}

