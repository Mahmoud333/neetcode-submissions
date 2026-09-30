class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var ans = 0 //max profit
        var mn = Int.max //lowest price

        for num in prices {
            ans = max(ans, num - mn)
            mn = min(mn, num)
        }

        return ans
    }
}
