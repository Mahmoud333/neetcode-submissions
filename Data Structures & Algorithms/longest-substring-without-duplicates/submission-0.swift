class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var ar: [Character] = s.map { $0 }
        var ans = 0

        var freq = [Character: Int]()
        var cur = 0
        var l = 0
        var r = 0
        while r < ar.count {
            let c = ar[r]
            freq[c, default: 0] += 1
            if freq[c]! > 1 {
                while freq[c]! > 1 {
                    freq[ar[l]]! -= 1
                    l += 1
                }
            }
            cur = (r - l) + 1
            ans = max(ans, cur)
            r += 1
        }


        return ans
    }
}
