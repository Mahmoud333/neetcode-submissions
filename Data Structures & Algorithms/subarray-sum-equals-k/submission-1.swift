class Solution {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var ans = 0

        func dfs(_ i : Int, _ cur: Int) {
            if i > nums.count - 1 {
                return
            }
            if cur > k {
                //return
            }
            var cur = cur + nums[i]
            if cur == k {
                ans += 1
            }
            dfs(i + 1, cur)
        }

        for i in 0 ..< nums.count {
            dfs(i, 0)
        }

        return ans
    }
}


class Solution1 {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var ans = 0
        var l = 0
        var r = 0
        var cur = 0
        
        while r < nums.count {
            while cur < k {
                cur += nums[r]
                r += 1
            }
            if cur == k {
                ans += 1
            }
            cur -= nums[l]
            l += 1
        }

        return ans
    }
}
