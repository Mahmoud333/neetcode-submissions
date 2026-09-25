class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var sorted = nums.sorted { $0 < $1 }        
        var set = Set<[Int]>()

        for i in 0 ..< sorted.count {
            var l = i + 1
            var r = sorted.count - 1
            while l < r {
                let n1 = sorted[i]
                let n2 = sorted[l]
                let n3 = sorted[r]
                let sum = n1 + n2 + n3
                if sum == 0 {
                    set.insert([n1, n2, n3])
                    l += 1
                } else if sum > 0 {
                    r -= 1
                } else if sum < 0 {
                    l += 1
                }
            }
        }

        return Array(set)
    }
}
