//
//  main.swift
//  力扣206_翻转链表
//
//  Created by YueWen on 2021/7/6.
//

/**
 给你单链表的头节点 head ，请你反转链表，并返回反转后的链表。
 */

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}




class Solution {
    //翻转
    func reverseList(_ head: ListNode?) -> ListNode? {

        var prev: ListNode? = nil
        var cur = head

        while p != nil {
            let next = cur?.next
            cur?.next = prev
            prev = cur
            cur = next
        }
        return prev
    }
}

let i = Solution().reverseList(ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(5))))))
let o = 0
