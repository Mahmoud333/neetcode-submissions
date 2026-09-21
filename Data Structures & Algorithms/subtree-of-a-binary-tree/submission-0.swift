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
        if root == nil && subRoot == nil {
            return true
        } else if root == nil && subRoot != nil {
            return false
        }

        if root?.val == subRoot?.val {
            return isSubtree(root?.left, subRoot?.left) && isSubtree(root?.right, subRoot?.right) 
        } else {
            return isSubtree(root?.left, subRoot) || isSubtree(root?.right, subRoot)
        }
    }
}
