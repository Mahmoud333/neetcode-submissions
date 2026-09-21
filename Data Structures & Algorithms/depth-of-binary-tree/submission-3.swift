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
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil { return 0 }
        var queue = [TreeNode?]()
        queue.append(root!)
        var level = 0
        while queue.isEmpty == false {
            var cur = queue
            while cur.isEmpty == false {
                let n = cur.removeFirst()!
                if let l = n.left {
                    queue.append(l)
                }
                if let r = n.right {
                    queue.append(r)    
                }
            }
            level += 1
        }
        return level
    }
}
