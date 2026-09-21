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
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        var mx = Int.min

        func dfs(_ n: TreeNode?) -> Int {
            if n == nil {
                return 0
            }
            let l = dfs(n?.left)
            let r = dfs(n?.right)
            mx = max(mx, l + r)
            return max(l, r) + 1
        }

        dfs(root)

        return mx
    }
}
