class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        var mx = 0
        var mxi = 0
        for i in 0 ..< nums.count {
            let num = nums[i]
            if num > mx {
                mx = num
                mxi = i
            }
        }
        //move that max one step before it
        if mxi == 0 {
            nums = nums.sorted { $0 < $1 }
        } else {
            nums.swapAt(mxi, mxi - 1)
        }
    }
}
