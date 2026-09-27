class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        while l <= r {
            //let m = l + (r - l) / 2
            let m = (r + l) / 2
            let left = nums[l]
            let right = nums[r]
            print(left, nums[m], right)
            if nums[m] == target {
                return m
            } 

            if left <= nums[m] { //left is sorted
                if target > nums[m] {
                    l = m + 1
                } else if target < left {
                    l = m + 1
                } else {
                    r = m - 1
                }
            } else {              //right is sorted
                if target < nums[m] {
                    r = m - 1
                } else if target > right {
                    r = m - 1
                } else {
                    l = m + 1
                }
            }
        }
        return -1
    }
}
