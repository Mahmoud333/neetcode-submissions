class Solution {
    func climbStairs(_ n: Int) -> Int {
        var memo = [Int: Int]()

        func dfs(_ i: Int) -> Int {
            if i > n {
                return 0
            } else if i == n {
                return 1
            }
            if memo[i] != nil {
                return memo[i]!
            }
            let res = dfs(i + 1) + dfs(i + 2)
            memo[i] = res
            return res
        }

        return dfs(0)
    }
}
