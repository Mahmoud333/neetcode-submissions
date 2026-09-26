class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var ar: [Character] = s.map { $0 }

        var l = 0
        var r = ar.count - 1
        while l <= r {
            if ar[l].isLetter == false {
                l += 1
                continue
            }
            if ar[r].isLetter == false {
                r -= 1
                continue
            }
            if ar[l].lowercased() == ar[r].lowercased() {
                l += 1
                r -= 1
                continue
            } else {
                return false
            }
        }
        return true
    }
}
