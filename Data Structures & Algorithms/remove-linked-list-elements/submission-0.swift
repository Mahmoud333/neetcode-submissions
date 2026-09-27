/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        var dummy: ListNode? = ListNode(-1)
        dummy?.next = head
        var cur = dummy

        func ignore(_ n: ListNode?, _ v: Int) -> ListNode? {
            if n == nil { return nil }
            if n?.val != v { return n }
            return ignore(n?.next, v)
        }

        while cur != nil {
            if cur?.next?.val == val {
                cur?.next = ignore(cur?.next, val)
            }
            cur = cur?.next
        }

        return dummy?.next
    }
}
