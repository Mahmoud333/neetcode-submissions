class Solution {
    func isPowerOfTwo(_ n: Int) -> Bool {
        var l = 0
        var r = n
        let n = Double(n)
        while l < r {
            let m = l + (r - l) / 2
            let v = Double(pow(2.0, Double(m)))
            if v == n {
                return true
            }
            if v < n {
                l = m + 1
            } else {
                r = m
            }
        }

        return false
    }
}

class Solution1 {
    func isPowerOfTwo(_ n: Int) -> Bool {
        for i in 0 ... n {
            if pow(2.0, Double(i)) == Double(n) {
                return true
            }
        }
        return false
    }
}
