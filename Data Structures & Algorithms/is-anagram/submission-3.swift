class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var ar = [Int](repeating: 0, count: 27)
        for c: Character in s {
            ar[Int(c.asciiValue!-Character("a").asciiValue!)] += 1
        }
        for c: Character in t {
            ar[Int(c.asciiValue!-Character("a").asciiValue!)] -= 1
        }
        //print(ar)
        for i in ar {
            if i != 0 { return false }
        }
        return true
    }
}
