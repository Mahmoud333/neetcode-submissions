class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {        
        var l = [Int](repeating: 0, count: nums.count)
        l[0] = 1
        for i in 1 ..< nums.count {
            let num = nums[i-1]
            l[i] = l[i-1] * num
        }
        //print(l)

        var r = [Int](repeating: 0, count: nums.count)
        r[nums.count -  1] = 1
        for i in stride(from: nums.count - 2, to: -1, by: -1) {
            let num = nums[i+1]
            r[i] = r[i+1] * num
        }
        //print(r)

        var ans = [Int](repeating: 0, count: nums.count)
        for i in 0 ..< nums.count {
            ans[i] = l[i] * r[i] 
        }
        return ans
    }
}
