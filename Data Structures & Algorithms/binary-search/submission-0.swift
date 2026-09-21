class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        while l <= r {
            let m = l + (r - l) / 2
            print(m)
            if nums[m] == target {
                return m
            } else if nums[m] > target {
                r = m - 1
            } else if nums[m] < target {
                l = m + 1
            }
        }

        return -1
    }
}
