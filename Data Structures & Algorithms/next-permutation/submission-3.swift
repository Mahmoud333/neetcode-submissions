/*
1. Scan from right to left to find the first element that is smaller than its right neighbor we call it pivot, can be swapped with something larger to get a bigger permutation.

2. find the smallest element to the right of pivot that is still larger than pivot and swap them

3. After the swap, everything to the right of the pivot position is in descending order. To get the smallest possible permutation from this point, we reverse that suffix to ascending order.

4. If no such pivot exists (the array is fully descending), we are at the largest permutation, so we reverse the entire array to get the smallest.
*/
//solution
class Solution {
    func nextPermutation(_ nums: inout [Int]) {
        let n = nums.count
        //1 
        var p = n - 2 //pivot
        while p >= 0 && nums[p] >= nums[p + 1] {
            p -= 1
        }
        //2
        if p >= 0 {
            var j = n - 1
            while nums[j] <= nums[p] {
                j -= 1
            }
            nums.swapAt(p, j)
        }
        //3
        var l = p + 1
        var r = n - 1
        while l < r {
            nums.swapAt(l, r)
            l += 1
            r -= 1
        }
    }
}

//mine wrong
class Solution1 {
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
