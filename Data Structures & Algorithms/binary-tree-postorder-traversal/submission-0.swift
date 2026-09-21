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
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var ar = [Int]()
        func dfs(_ n: TreeNode?) {
            if n == nil {
                return
            }
            dfs(n?.left)
            dfs(n?.right)
            ar.append(n!.val)
        }
        dfs(root)
        return ar
    }
}
