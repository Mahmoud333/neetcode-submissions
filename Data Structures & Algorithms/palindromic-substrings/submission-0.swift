class Solution {
    func countSubstrings(_ s: String) -> Int {
        var ar = Array(s)
        var ans = 0

        for i in 0 ..< ar.count {
            //count current letter
            ans += 1

            //consider it odd palindrom
            var l = i - 1
            var r = i + 1
            while l >= 0 && r < ar.count && ar[l] == ar[r] {
                ans += 1
                l -= 1
                r += 1
            }

            //consider it even palindrom
            l = i
            r = i + 1
            while l >= 0 && r < ar.count && ar[l] == ar[r] {
                ans += 1
                l -= 1
                r += 1
            }
        }

        return ans
    }
}