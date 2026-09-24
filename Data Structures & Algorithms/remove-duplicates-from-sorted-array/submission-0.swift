class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        var set = Set<Int>()
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            let num = nums[i]
            if set.contains(num) {
                nums.remove(at:i)
            }
            set.insert(num)
        }
        return set.count
    }
}
