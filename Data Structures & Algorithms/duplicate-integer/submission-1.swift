class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var set = [Int]()
        for num in nums {
            if set.contains(num) {
                return true
            }
            set.insert(num)
        }
        return false
    }
}
