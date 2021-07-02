//
//  main.swift
//  力扣21_合并两个有序链表
//
//  Created by YueWen on 2021/7/2.
//

import Foundation

/*
 ```
 将两个升序链表合并为一个新的 升序 链表并返回。新链表是通过拼接给定的两个链表的所有节点组成的。

 示例 1：
 输入：l1 = [1,2,4], l2 = [1,3,4]
 输出：[1,1,2,3,4,4]
 
 示例 2：
 输入：l1 = [], l2 = []
 输出：[]
 
 示例 3:
 输入：l1 = [], l2 = [0]
 输出：[0]
 
 提示：

 两个链表的节点数目范围是 [0, 50]
 -100 <= Node.val <= 100
 l1 和 l2 均按 非递减顺序 排列
 ```
 */



public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}



class Solution {
    
    /// 合并
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        //最终的node
        let result: ListNode?  = ListNode(0, nil)
        var r = result
        var n1 = l1
        var n2 = l2
        //开始比较
        while n1 != nil && n2 != nil {
            //开始比较
            if (n1?.val ?? 0) <= (n2?.val ?? 0) {
                r?.next = n1
                n1 = n1?.next
            } else {
                r?.next = n2
                n2 = n2?.next
            }
            r = r?.next
        }
        //最后的拼接
        if n1 == nil && n2 != nil {
            r?.next = n2
        } else if n2 == nil && n1 != nil {
            r?.next = n1
        }
        
        return result?.next
    }
}

let l1 = ListNode(1, ListNode(2, ListNode(4, nil)))
let l2 = ListNode(1, ListNode(3, ListNode(4, nil)))

let z = Solution().mergeTwoLists(l1, l2)


let i = 0
