class Solution {
    func subarraysDivByK(_ nums: [Int], _ k: Int) -> Int {
        var seen: [Int: Int] = [0: 1]
        var prefixSum: Int = 0
        var reminder: Int = 0
        var counting: Int = 0

        for (index, num) in nums.enumerated() {
            prefixSum += num

            reminder = prefixSum % k

            if let reminderOccurence = seen[reminder] {
                counting += reminderOccurence
            }
            seen[reminder, default: 0] += 1
        }

        return counting
    }
}

class Solution1 {
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