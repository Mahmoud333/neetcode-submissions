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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        func dfs(_ r: TreeNode?, _ n: TreeNode?) -> Bool {
            if r == nil && n == nil {
                return true
            } 
            if r?.val != n?.val {
                return false
            } 
            if r == nil || n == nil {
                return false
            }
            
            return dfs(r?.left, n?.left) 
            && dfs(r?.right, n?.right) 
            && r?.val == n?.val
        }
        if subRoot == nil { return true }
        if root == nil { return false }

        if root?.val == subRoot?.val {
            if dfs(root, subRoot) {
                return true
            }
        }

        return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
    }
}
