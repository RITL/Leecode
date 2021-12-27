//
//  main.swift
//  力扣86_分隔链表
//
//  Created by YueWen on 2021/12/27.
//

/**
 给你一个链表的头节点 head 和一个特定值 x ，请你对链表进行分隔，使得所有 小于 x 的节点都出现在 大于或等于 x 的节点之前。
 
 你应当 保留 两个分区中每个节点的初始相对位置。
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
    
    func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
        if (head == nil || head?.next == nil) {
            return head
        }
        var head = head
        let left = ListNode(-1, nil)
        var small: ListNode? = left
        
        let right = ListNode(-1, nil)
        var large: ListNode? = right
        
        while(head != nil) {
            
            if let head = head {
                if(head.val < x) {
                    small?.next = head
                    small = small?.next
                } else {
                    large?.next = head
                    large = large?.next
                }
            }
            head = head?.next
        }
        
        large?.next = nil
        small?.next = right.next
        return left.next
    }
}

