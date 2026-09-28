class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var l = 0, r = heights.count - 1
        var res = 0

        while l < r {
            let area = min(heights[l], heights[r]) * (r - l)
            res = max(res, area)
            if heights[l] <= heights[r] {
                l += 1
            } else {
                r -= 1
            }
        }
        return res
    }
}

class Solution2 {
    func maxArea(_ heights: [Int]) -> Int {
        //let ans = 0

        var left = [Int](repeating: 0, count: heights.count)
        var mxlefti = 0
        var mxleft = Int.min
        for l in 0 ..< left.count {
            left[l] = ((left.count - 1) - l) * heights[l]
            if left[l] > mxleft {
                mxleft = left[l]
                mxlefti = l
            }
        }
        

        var right = [Int](repeating: 0, count: heights.count)
        var mxrighti = 0
        var mxright = Int.min
        for r in stride(from: right.count - 1, to: -1, by: -1) {
            right[r] = (r - 0) * heights[r]
            if right[r] > mxright && r != mxlefti {
                mxright = right[r]
                mxrighti = r
            }
        }
        
        //print(heights)
        //print(left)
        //print(right)

        return (mxrighti - mxlefti) * min(heights[mxrighti], heights[mxlefti])

        //return ans
    }
}


class Solution1 {
    func maxArea(_ heights: [Int]) -> Int {
        var ans = 0

        var l = 0 
        var r = heights.count - 1 
        
        while l < r {
            while (r - l) * min(heights[l], heights[r]) >= ans && l < r {
                ans = (r - l) * min(heights[l], heights[r])
                r -= 1
                print(l, r, ans)
            }
            l += 1
            r = heights.count - 1 
        }

        return ans
    }
}
