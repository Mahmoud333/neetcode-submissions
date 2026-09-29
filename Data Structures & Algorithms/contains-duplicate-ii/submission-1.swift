class Solution {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var dict = [Int: Int]()

        for i in 0 ..< nums.count {
            let num = nums[i]
            if dict[num] == nil {
                dict[num] = i
            } else {
                if abs(dict[num]! - i) <= k {
                    return true
                } else {
                    dict[num] = i
                }
            }
        }

        return false
    }
}
