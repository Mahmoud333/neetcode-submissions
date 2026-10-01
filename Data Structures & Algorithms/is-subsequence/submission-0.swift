class Solution {
    func isSubsequence(_ s: String, _ t: String) -> Bool {
        var ar1 = s.map { $0 }
        var ar2 = t.map { $0 }

        for i in 0 ..< ar2.count {
            if ar2[i] == ar1.first {
                let c = ar1.removeFirst()
            }
        }

        return ar1.isEmpty
    }
}
