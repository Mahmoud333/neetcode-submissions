class Solution {
    func lengthOfLastWord(_ s: String) -> Int {
        let ar = s.map {$0}
        var r = ar.count - 1
        var count = 0
        
        while r >= 0 {
            let c = ar[r]
            if c.isLetter {
                count += 1
            }
            if count > 0 && c.isWhitespace {
                break
            }
            r -= 1
        }

        return count
    }
}
