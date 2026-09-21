class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var l = 0
        var r = nums.count - 1
        while l < r {
            let sum = nums[l] + nums[r]
            if sum == target { 
                return [l, r]
            } else if sum > target {
                r -= 1
            } else if sum < target {
                l += 1
            }
        }
        return [l, r]
    }
}

//sorted 
class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var sorted = nums.sorted { $0 < $1 } 
        print(sorted)
        var l = 0
        var r = sorted.count - 1
        while l < r {
            let sum = sorted[l] + sorted[r]
            if sum == target { 
                return [l, r]
            } else if sum > target {
                r -= 1
            } else if sum < target {
                l += 1
            }
        }
        return [l, r]
    }
}
