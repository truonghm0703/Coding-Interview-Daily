//You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
//
//You may assume the two numbers do not contain any leading zero, except the number 0 itself.
//
//Example:
//
//Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
//Output: 7 -> 0 -> 8
//Explanation: 342 + 465 = 807.

import Foundation
class ListNode {
    public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}

func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var listNode : ListNode? = ListNode.init(0)
    var carry = 0
    var curL1 = l1
    var curL2 = l2
    
    while curL1 != nil || curL2 != nil{
        let val = (curL1 != nil ? curL1!.val : 0) + (curL2 != nil ? curL2!.val : 0)
        setListNodeValue(&listNode,((val + carry) % 10))
        if val + carry > 9 {
            carry = 1
        }else{
            carry = 0
        }
        curL1 = curL1 != nil ? curL1!.next : nil
        curL2 = curL2 != nil ? curL2!.next : nil
    }
    
    if carry == 1{
        setListNodeValue(&listNode,1)
    }
    
    return listNode!.next
}

func setListNodeValue(_ l1 : inout ListNode?, _ val : Int ){
    if l1 == nil{
        l1 = ListNode.init(val)
    }else{
        setListNodeValue(&l1!.next,val)
    }
}
