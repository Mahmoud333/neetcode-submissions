class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        var ar = "\(x)".map { $0 }
        var l = 0
        var r = ar.count - 1
        while l < r {
            if ar[l] != ar[r] {
                return false
            }
            r -= 1
            l += 1
        }
        return true
    }
}


class Solution1 {
    func isPalindrome(_ x: Int) -> Bool {
        if x < 0 { return false }
        if x < 9 { return true }
        var total = x
        while total > 9 {
            var cur = total
            
            //get first
            var l = cur // temp
            var divisor = 1
            while l > 9 {
                l /= 10
                divisor *= 10
            }

            //remove it
            cur = cur - (l * divisor)

            //get last
            let r = cur % 10

            //remove it
            cur = cur / 10
            print(l, r, total, cur)
            if l != r {
                return false
            }

            total = cur
        }
        return true
    }
}
