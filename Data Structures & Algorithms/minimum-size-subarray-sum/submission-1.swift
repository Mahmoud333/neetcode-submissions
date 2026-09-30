class Solution {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var count = Int.max

        var cur = 0
        var l = 0
        var r = 0 
        while l < nums.count {
            // while r < nums.count, cur < target {
            //     cur += nums[r]
            //     if cur < target {
            //         r += 1
            //     } else if cur >= target {
            //         print(cur, count, l, r)
            //         break
            //     }
            // }
            while r < nums.count, cur < target {
                cur += nums[r]
                r += 1
            }

            if cur >= target {
                count = min(count, abs(r - l) )
                //print("count:", count, "cur:", cur, l, r)
            }


            //print("cur before - ", cur)
            cur -= nums[l]
            //print("cur after - ", cur)
            l += 1
        }


        return count == Int.max ? 0 : count
    }
}


class Solution1 {
    func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
        var count = Int.max

        var cur = 0
        var l = 0
        var r = 0 
        while l < nums.count {
            while r < nums.count, cur < target {
                if cur + nums[r] < target {
                    cur += nums[r]
                    r += 1
                } else if cur + nums[r] >= target {
                    cur += nums[r]
                    count = min(count, (r - l) + 1)
                    print(cur, count, l, r)
                    break
                }
            }

            cur -= nums[l]
            l += 1
        }


        return count
    }
}
