class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var freq = [Int: Int]()
        var ans = nums[0]
        for num in nums {
            freq[num, default: 0] += 1
            if freq[ans]! < freq[num]! {
                ans = num
            }
        }
        return ans
    }
}
