class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var ans = 0
        for l in 0 ..< nums.count {
            var sum = 0
            for r in l ..< nums.count {
                sum += nums[r]
                if sum % k == 0 {
                    ans += 1
                }
            }
        }
        return ans
    }
}