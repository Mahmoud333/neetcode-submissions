class Solution {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        let n = nums.count 
        var ar = nums
        for i in 0 ..< n {
            ar.append(nums[i])
        }
        return ar
    }
}
