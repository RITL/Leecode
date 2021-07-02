//
//  main.swift
//  力扣19_删除链表的倒数第 N 个结点
//
//  Created by YueWen on 2021/7/2.
//

/*
 ```
 给你一个链表，删除链表的倒数第 n 个结点，并且返回链表的头结点。
 
 进阶：你能尝试使用一趟扫描实现吗？
 
 
 示例 1：
 输入：head = [1,2,3,4,5], n = 2
 输出：[1,2,3,5]
 
 示例 2：
 
 输入：head = [1], n = 1
 输出：[]
 示例 3：
 
 输入：head = [1,2], n = 1
 输出：[1]
 
 提示：
 
 链表中结点的数目为 sz
 1 <= sz <= 30
 0 <= Node.val <= 100
 1 <= n <= sz
 
 ```
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
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        //依旧使用快慢指针
        //构造参数
        let result = ListNode(0, head)
        
        var p: ListNode? = nil
        var prev: ListNode?  = result
        var next: ListNode? = result
        
        //进行移动
        for _ in 0..<n {
            next = next?.next
        }
        //进行遍历
        while next != nil {
            p = prev
            prev = prev?.next
            next = next?.next
        }
        //进行删除即可
        p?.next = prev?.next
        return result.next
    }
}


let i = Solution().removeNthFromEnd(ListNode(1), 1)

let j = 0
