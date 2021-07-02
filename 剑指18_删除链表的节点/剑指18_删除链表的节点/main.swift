//
//  main.swift
//  剑指18_删除链表的节点
//
//  Created by YueWen on 2021/7/2.
//

import Foundation

/*
 ```
 给定单向链表的头指针和一个要删除的节点的值，定义一个函数删除该节点。

 返回删除后的链表的头节点。

 注意：此题对比原题有改动

 示例 1:

 输入: head = [4,5,1,9], val = 5
 输出: [4,1,9]
 解释: 给定你链表中值为 5 的第二个节点，那么在调用了你的函数之后，该链表应变为 4 -> 1 -> 9.
 示例 2:

 输入: head = [4,5,1,9], val = 1
 输出: [4,5,9]
 解释: 给定你链表中值为 1 的第三个节点，那么在调用了你的函数之后，该链表应变为 4 -> 5 -> 9.
  

 说明：

 题目保证链表中节点的值互不相同
 若使用 C 或 C++ 语言，你不需要 free 或 delete 被删除的节点
 ```
 */


class ListNode {
    
    var val: Int?
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


class Solution {
    
    func deleteNode(_ head: ListNode?, _ val: Int) -> ListNode? {
        //组建自己的ListNode
        let handleListNode = ListNode(0)
        handleListNode.next = head
        //记录第一个
        var prev: ListNode? = handleListNode
        //记录head
        var cur = handleListNode.next
        //开始遍历
        while cur != nil {
            if cur?.val == val {
               //删除即可
                prev?.next = cur?.next
                break
            }
            //往前移动
            prev = prev?.next
            cur = cur?.next
        }
        return handleListNode.next
    }
}


class Solution1 {
    func deleteNode(_ node: ListNode?) {
        if node == nil { return }
        node?.val = node?.next?.val //将需要删除的结点的赋值与下一个结点
        node?.next = node?.next?.next //指向下一个的下一个
    }
}

