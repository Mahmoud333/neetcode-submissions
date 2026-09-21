class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var mx = 0

        var l = 0
        var r = prices.count - 1

        while l < r {
            mx = max(mx, prices[l] - prices[r])
        }

        return mx
    }
}


class Solution1 {
    func maxProfit(_ prices: [Int]) -> Int {
        var mx = 0
        func dfs(_ cur: Int, _ i: Int, _ tot: Int) {
            if i > prices.count - 1 {
                mx = max(mx, tot)
                return
            }
            if cur > 0 {
                // sell

                // dont sell
            } else {
                // buy
                dfs(prices[i], i + 1, prices[])

                // dont buy
            }
            //buy
            dfs(cur + prices[i], i + 1, true)
            //dont buy
            dfs(cur, i + 1, false)
        }

        dfs(0, 0, 0)

        return mx
    }

    
}
