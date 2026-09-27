class Solution {
    func strStr(_ haystack: String, _ needle: String) -> Int {
        let ar1 = haystack.map { $0 }
        let ar2 = needle.map { $0 }

        for i in 0 ..< ar1.count {
            if ar1[i] == ar2[0] {
                var equal = true
                inner: for j in 0 ..< ar2.count {
                    if i + j > ar1.count - 1 {
                        equal = false
                        break inner
                    }
                    if ar1[i+j] != ar2[j] {
                        equal = false
                        break inner
                    }
                }
                if equal {
                    return i
                }
            }
        }

        return -1
    }
}
