//
//  main.swift
//  83_删除排序链表中的重复元素
//
//  Created by YueWen on 2021/12/27.
//

/**
 存在一个按升序排列的链表，给你这个链表的头节点 head ，请你删除所有重复的元素，使每个元素 只出现一次 。
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
    
//    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
//        if (head == nil || head?.next == nil) { return head }
//        let result = ListNode(0, head)
//        //使用前后指针
//        var prev: ListNode? = head
//        var next = head?.next
//        //开始遍历
//        while(next != nil) {
//            if(prev?.val != next?.val) {
//                prev = next
//                next = next?.next
//            } else { //如果相等，则删除即可
//                prev?.next = next?.next
//                next = next?.next
//            }
//        }
//        return result.next
//    }
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if (head == nil || head?.next == nil) { return head }
        var cur = head
        //开始遍历
        while(cur != nil) {
            if(cur?.val != cur?.next?.val) {
                cur?.next = cur?.next?.next
            } else { //如果相等，则删除即可
                cur = cur?.next
            }
        }
        return head
    }
}

