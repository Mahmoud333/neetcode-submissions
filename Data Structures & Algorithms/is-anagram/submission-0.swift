class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var ar = [Int](repeating: 0, count: 27)
        for c: Character in s {
            ar[Int(c.asciiValue!-Character("a").asciiValue!)] += 1
        }
        for c: Character in s {
            ar[Int(c.asciiValue!-Character("a").asciiValue!)] -= 1
        }
        return ar.reduce(0) { $0 + $1 } == 0
    }
}
