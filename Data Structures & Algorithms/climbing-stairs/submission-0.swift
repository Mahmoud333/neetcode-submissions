class Solution {
    func climbStairs(_ n: Int) -> Int {
        var count = 0
        
        func dfs(_ i: Int) -> Int {
            if i > n {
                return 0
            } else if i == n {
                return 1
            }

            return dfs(i + 1) + dfs(i + 2)
        }

        count = dfs(0)

        return count
    }
}
