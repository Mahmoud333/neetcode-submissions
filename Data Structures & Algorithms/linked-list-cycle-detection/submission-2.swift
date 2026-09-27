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
    func hasCycle(_ head: ListNode?) -> Bool {
        var slow = head
        var fast = head?.next

        while slow != nil {
            if slow === fast {
                return true
            }
            slow = slow?.next
            fast = fast?.next?.next
        }

        return false
    }
}

class Solution1 {
    func hasCycle(_ head: ListNode?) -> Bool {
        var v = Set<Int>()

        func dfs(_ n: ListNode?) -> Bool {
            if n == nil { return false }
            if v.contains(n!.val) { return true }
            v.insert(n!.val)
            return dfs(n?.next)
        }

        return dfs(head)
    }
}
