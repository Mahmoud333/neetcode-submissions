class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var ar: [Character] = s.map { $0 }
        var l = 0
        var r = s.count - 1

        while l <= r {
            let lc = ar[l]
            let rc = ar[r]
            if lc.isLetter == false && lc.isNumber == false {
                l += 1
                continue
            }
            if rc.isLetter == false && rc.isNumber == false {
                r -= 1
                continue
            }

            if lc != rc {
                return false
            }
            r -= 1
            l += 1
        }
        return true
    }
}
