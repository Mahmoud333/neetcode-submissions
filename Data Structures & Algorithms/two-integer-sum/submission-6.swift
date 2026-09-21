class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
       var map = [Int: Int]()
       for (num, i) in nums.enumerated() {
        if map[target - num] != nil {
            return [map[target-num]!, i]
        }
        map[num] = i
       }
       return []
    }
}

//sorted with 2 pointers
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
