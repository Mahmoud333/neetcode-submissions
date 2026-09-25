class Solution {
    func moveZeroes(_ nums: inout [Int]) {
        var zeros = 0
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            if nums[i] == 0 {
                zeros += 1
                nums.remove(at: i)
            } 
        }
        for _ in 0 ..< zeros {
            nums.append(0)
        }
    }
}

class Solution1 {
    func moveZeroes(_ nums: inout [Int]) {
        var l = 0
        var r = nums.count - 1
        while l < r {
            while r >= 0 {
                if nums[r] != 0 {
                    break
                }
                r -= 1
            }
            while l < nums.count {
                if nums[l] == 0 {
                    break
                }
                l += 1
            }
            nums.swapAt(l, r)
            l += 1
            r -= 1
        }
    }
}
