class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sorted = nums.sorted { $0 < $1 } 
        print(sorted)
        var l = 0
        var r = sorted.count - 1
        while l <= r {
            let sum = sorted[l] + sorted[r]
            if sum == target { 
                break
            } else if sum > target {
                r -= 1
            } else if sum < target {
                l += 1
            }
        }
        return [l, r]
    }
}
