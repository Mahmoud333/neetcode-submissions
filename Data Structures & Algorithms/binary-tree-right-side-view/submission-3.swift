/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    static func rightSideView(_ root: TreeNode?) -> [Int] {
        if root == nil { return [] }
        var queue = [root!]
        var ans = [Int]()

        while queue.isEmpty == false {
            var part = queue
            queue = []
            let count = part.count
            for i in 0 ..< part.count {
                let n = part.removeFirst()

                if i == count - 1 {
                    ans.append(n.val)
                }

                if let l = n.left {
                    queue.append(l)
                }
                if let r = n.right {
                    queue.append(r)
                }
            }
        }
        return ans
    }
}
