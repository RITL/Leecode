//
//  main.swift
//  力扣160_相交链表
//
//  Created by YueWen on 2021/7/6.
//

/**
```
给你两个单链表的头节点 headA 和 headB ，请你找出并返回两个单链表相交的起始节点。如果两个链表没有交点，返回 null 。
```
*/

/**
 思路:
 使用交叉遍历，保证两个指针的路径完全一致，是否相同，相同即相交点
 */


import Foundation


public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
 

class Solution {
    
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        //有一个为nil，则返回nil即可
//        guard let headA = headA, let headB = headB else { return nil }
        //开始遍历
        var a: ListNode? = headA
        var b: ListNode? = headB
        //开始循环
        while a !== b {
            a = a == nil ? headB : a?.next
            b = b == nil ? headA : b?.next
        }
        return a
    }
}

