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
    func reverseList(_ head: ListNode?) -> ListNode? {
        var head = head
        while head.next != nil {
            let next = head.next
            let current = head
            head.next = current
            head = next
        }
        return head
    }
}
