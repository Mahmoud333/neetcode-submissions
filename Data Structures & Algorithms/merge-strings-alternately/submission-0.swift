class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var ar1: [Character] = word1.map { $0 }
        var ar2: [Character] = word2.map { $0 }
        var ans = [Character] ()

        for i in 0 ..< max(ar1.count, ar2.count) {
            if i < ar1.count {
                ans.append(ar1[i])
            }
            if i < ar2.count {
                ans.append(ar2[i])
            }
        }

        return ans.reduce("") { $0 + "\($1)"}
    }
}
