class Solution {
    func validPalindrome(_ s: String) -> Bool {
        var ar: [Character] = s.map { $0 }
        
        // m means mistakes
        func dfs(_ l: Int, _ r: Int, _ m: Int) -> Bool {
            if l == r || l > r {
                return true
            } 
            if m > 1 {
                return false
            }

            if ar[l] == ar[r] {
                return dfs(l + 1, r - 1, m)
            } else {
                //ignore one of them
                return dfs(l + 1, r, m + 1) || dfs(l, r - 1, m + 1)
            }

        }

        let ans = dfs(0, ar.count - 1, 0)

        return ans
    }
}
