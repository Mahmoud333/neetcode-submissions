class Solution {
    func sortColors(_ nums: inout [Int]) {
        var freq = [0,0,0]
        for num in nums {
            if num == 0 {
                freq[0] += 1
            } else if num == 1 {
                freq[1] += 1
            } else if num == 2 {
                freq[2] += 1
            }
        }
        var start = [0,0,0]
        //find while start
        start[1] = freq[0]
        //find blue start
        start[2] = freq[0] + freq[1]
        print(nums)
        
        //remove all 0 and 2
        for i in stride(from: nums.count - 1, to: -1, by: -1) {
            if nums[i] == 0 || nums[i] == 2 {
                nums.remove(at: i)
            }
        }
        //re-add all 0 and 2
        for _ in 0 ..< freq[0] {
            nums.insert(0, at: 0)
        }
        for _ in 0 ..< freq[2] {
            nums.append(2)
        }
    }
}

class Solution2 {
    func sortColors(_ nums: inout [Int]) {
        var freq = [0,0,0]
        for num in nums {
            if num == 0 {
                freq[0] += 1
            } else if num == 1 {
                freq[1] += 1
            } else if num == 2 {
                freq[2] += 1
            }
        }
        var start = [0,0,0]
        //find while start
        start[1] = freq[0]
        //find blue start
        start[2] = freq[0] + freq[1]
        print(nums)
        
        var i = 0
        while i < nums.count {
            var change = false
            if nums[i] == 0, i >= start[1] {
                nums.remove(at: i)
                //nums.insert(0, at: start[0])
                nums.insert(0, at: 0)
                //print(i, nums)
                change = true
            } else if nums[i] == 1, i < start[1] || i >= start[2] {
                nums.remove(at: i)
                nums.insert(1, at: start[1])
                change = true
            } else if nums[i] == 2, i < start[2] {
                nums.remove(at: i)
                //nums.insert(2, at: start[2])
                nums.append(2)
                //print(i, nums)
                change = true
            }
            print(i, nums)
            if change == false {
                i += 1
            }
        }
        print()
        print(freq)
        print(start)
    }
}

class Solution1 {
    func sortColors(_ nums: inout [Int]) {
        var freq = [0,0,0]
        for num in nums {
            if num == 0 {
                freq[0] += 1
            } else if num == 1 {
                freq[1] += 1
            } else if num == 2 {
                freq[2] += 1
            }
        }
        var start = [0,0,0]
        //find while start
        start[1] = freq[0]
        //find blue start
        start[2] = freq[0] + freq[1]
        print(nums)
        
        //var i = 0
        for i in 0 ..< nums.count {
        //while i < nums.count {
            let didChange = false
            if nums[i] == 0 {
                nums.remove(at: i)
                //nums.insert(0, at: start[0])
                nums.insert(0, at: 0)
                print(i, nums)
            } else if nums[i] == 1 {
                //nums.remove(at: i)
                //nums.insert(1, at: start[1])
            } else if nums[i] == 2 {
                nums.remove(at: i)
                //nums.insert(2, at: start[2])
                nums.append(2)
                print(i, nums)
            }
            //print(i, nums)
            if didChange {

            }
        }
        print(freq)
        print(start)
    }
}
/*
1,2,0

i: 0: 1,2,0 -> 1,2,3
i: 1: 1,2,0 -> 1,0,2
i: 2: 1,2,0 -> 0,1,2



*/