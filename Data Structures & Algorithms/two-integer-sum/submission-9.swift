class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for i in 0 ..< nums.count {
            let num = nums[i]
            //print(dict[target - num], dict)
            if dict[target - num] != nil {
                return [dict[target - num]!, i]
            }
            dict[num] = i
        }
        //print(dict)
        return []
    }
}