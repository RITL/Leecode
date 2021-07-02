//
//  main.swift
//  剑指24_反转链表
//
//  Created by YueWen on 2021/7/2.
//

/*
 ```
 定义一个函数，输入一个链表的头节点，反转该链表并输出反转后链表的头节点。


 示例:

 输入: 1->2->3->4->5->NULL
 输出: 5->4->3->2->1->NULL
  
 限制：

 0 <= 节点个数 <= 5000
 ```
 */

import Foundation


class ListNode {
    
    var val: Int?
    var next: ListNode?
    
    init(val: Int, next: ListNode?) {
        self.val = val
        self.next = next
    }
}

class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        //如果自己不存在返回nil即可
//        guard let head = head else { return nil }
        //如果自己的next为nil,返回自己即可
//        if head.next == nil { return head }
        //使用快慢指针
        var prev: ListNode? = nil
        var current: ListNode? = head
        //进行遍历
        while current != nil {
            //
            let next = current?.next
            current?.next = prev
            prev = current
            current = next
        }
        return prev
    }
}
