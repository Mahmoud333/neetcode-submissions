/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    private func add(_ l1: ListNode?, _ l2: ListNode?, _ carry: Int) -> ListNode? {
        if l1 == nil && l2 == nil && carry == 0 {
            return nil
        }

        let v1 = l1?.val ?? 0
        let v2 = l2?.val ?? 0

        let sum = v1 + v2 + carry
        let newCarry = sum / 10
        let val = sum % 10

        let nextNode = add(l1?.next, l2?.next, newCarry)
        return ListNode(val, nextNode)
    }

    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        return add(l1, l2, 0)
    }
}

class Solution1 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var num1 = ""
        var l1 = l1
        while l1 != nil {
            num1 += "\(l1!.val)"
            l1 = l1?.next
        }
        num1 = String(num1.reversed())

        var num2 = ""
        var l2 = l2
        while l2 != nil {
            num2 += "\(l2!.val)"
            l2 = l2?.next
        }
        num2 = String(num2.reversed())

        let sum = "\(Int(num1)! + Int(num2)!)"
        let ar: [String] = sum.map { "\($0)" }.reversed()
        //let ar: [String] = sum.map { "\($0)" }

        let head = ListNode(0) 
        var temp = head
        for i in 0 ..< ar.count {
            temp.next = ListNode(Int(ar[i])!)
            temp = temp.next!
        }

        return head.next
    }
}
