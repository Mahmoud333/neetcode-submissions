class Solution {
    func longestPalindrome(_ s: String) -> String {
        var ar = s.map { $0 }
        var ans = [Character]()

        for i in 0 ..< ar.count {
            //odd
            var l = i
            var r = i
            while l >= 0 && r < ar.count {
                if ar[l] != ar[r] {
                    break
                }
                if ans.count < (r - l) + 1 {
                    ans = Array(ar[l ... r])
                }
                l -= 1
                r += 1
            }

            //even
            l = i
            r = i + 1
            while l >= 0 && r < ar.count {
                if ar[l] != ar[r] {
                    break
                }
                if ans.count < (r - l) + 1 {
                    ans = Array(ar[l ... r])
                }
                l -= 1
                r += 1
            }
        }

        return ans.reduce("") { $0 + "\($1)" }
    }
}
