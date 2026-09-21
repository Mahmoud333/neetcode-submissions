class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var mn = prices[0]
        var profit = 0
        
        for p in prices {
            profit = max(profit, p - mn)
            if p < mn {
                mn = p
            }
        }

        return profit
    }
}

class Solution3 {
    func maxProfit(_ prices: [Int]) -> Int {
        
        var mx = prices[0]
        var profit = 0
        
        for p in prices {
            profit = max(profit, mx - p)
            if p > mx {
                mx = p
            }
        }

        return profit
    }
}

class Solution2 {
    func maxProfit(_ prices: [Int]) -> Int {
        var mx = 0

        let l = 0
        let r = prices.count - 1

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
                //dfs(prices[i], i + 1, prices[])

                // dont buy
            }
            //buy
            //dfs(cur + prices[i], i + 1, true)
            //dont buy
            //dfs(cur, i + 1, false)
        }

        dfs(0, 0, 0)

        return mx
    }   
}
