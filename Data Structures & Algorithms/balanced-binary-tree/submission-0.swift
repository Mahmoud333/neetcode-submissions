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
    func isBalanced(_ root: TreeNode?) -> Bool {
        var b = true
        func dfs(_ n: TreeNode?) -> Int {
            if n == nil {
                return 0
            }

            let l = dfs(n?.left)
            let r = dfs(n?.right)

            print(n?.val, abs(l - r))
            if abs(l - r) > 1 {
                b = false
            }
            return max(l, r) + 1
        }
        dfs(root)
        return b
    }
}
