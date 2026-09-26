class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var res = [[Int]]()
        var pick = [Bool](repeating: false, count: nums.count)

        var perm = [Int]()

        func backtrack() {
            if perm.count == nums.count {
                res.append(perm)
                return
            }
            for i in 0..<nums.count {
                if !pick[i] {
                    perm.append(nums[i])
                    pick[i] = true
                    backtrack()
                    perm.popLast()
                    pick[i] = false
                }
            }
        }

        
        backtrack()
        return res
    }
}

class Solution1 {
    func permute(_ nums: [Int]) -> [[Int]] {
        var ans = Set<[Int]>()
        var set = Set<Int>(nums)

        func dfs(_ cur: [Int], _ set: Set<Int>) {
            if set.isEmpty { 
                ans.insert(cur)
                return
            }
            var set = set
            var cur = cur
            let pop = set.removeFirst()
            cur.append(pop)
            dfs(cur, set)
        }

        dfs([], set)

        return Array(ans)
    }
}
