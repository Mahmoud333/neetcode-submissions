class Solution {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var l = 0
        var r = 0
        var ans = 0

        for l in 0 ..< nums.count {
            var zeros = 0
            var count = 0
            //print("l:", l, "zeros:", zeros)
            for r in l ..< nums.count {
                if nums[r] == 0 {
                    if zeros == k {
                        //print("r", r, "zeros:", zeros)
                        break
                    } else {
                        zeros += 1
                    }
                }
                count += 1
                if count >= ans {
                    ans = count 
                    //print(l, r)
                }
            }
        }


        // while r < nums.count {
        //     while zeros <= k, r < nums.count {
        //         if nums[r] == 0 {
        //             zeros += 1
        //         }
        //         if zeros == k && nums[r + 1] == 0 {
        //             break
        //         }
        //         r += 1
        //     } 
        //     ans = max(ans, r - l)

        //     if nums[l] == 0 {
        //         zeros -= 1
        //     }
        //     l += 1
        // }

        return ans
    }
}


class Solution1 {
    func longestOnes(_ nums: [Int], _ k: Int) -> Int {
        var l = 0
        var r = 0
        var zeros = 0
        var ans = 0

        while r < nums.count {
            while zeros <= k, r < nums.count {
                if nums[r] == 0 {
                    zeros += 1
                }
                if zeros == k && nums[r + 1] == 0 {
                    break
                }
                r += 1
            } 
            ans = max(ans, r - l)

            if nums[l] == 0 {
                zeros -= 1
            }
            l += 1
        }

        return ans
    }
}
