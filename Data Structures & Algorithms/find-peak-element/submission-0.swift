   //Mark mine
    class Solution {
        func findPeakElement(_ nums: [Int]) -> Int {
            var peak = nums[0]
            var peaki = 0
            for i in 0 ..< nums.count {
                if nums[i] < peak {
                    print("return i: \(i) num: \(nums[i])")
                    return peaki
                }
                if peak < nums[i] {
                    peak = nums[i]
                    peaki = i
                }
            }
            return peaki
        }
    }
    
    //MARK: Discuss
    class Solution2 {
        //https://leetcode.com/problems/find-peak-element/discuss/658563/Swift-Optimal-Solution
        func findPeakElement(_ nums: [Int]) -> Int {
             var left = 0
             var right = nums.count - 1
             while left < right {
                var middle = left + (right - left ) / 2
                if nums[middle] < nums[middle + 1] {
                    left = middle + 1
                } else {
                    right = middle
                }
             }
             return left
        }
    }