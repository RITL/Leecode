//
//  main.swift
//  力扣92_反转链表2
//
//  Created by YueWen on 2021/12/27.
//

import Foundation

/**
 给你单链表的头指针 head 和两个整数 left 和 right ，其中 left <= right 。请你反转从位置 left 到位置 right 的链表节点，返回 反转后的链表 。
 
 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/reverse-linked-list-ii
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */

///1、找到反转链表段
///2、反转链表
///3、拼接

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
    func reverseBetween(_ head: ListNode?, _ left: Int, _ right: Int) -> ListNode? {
        
    }
}
