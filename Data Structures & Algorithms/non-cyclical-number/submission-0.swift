class Solution {
    func isHappy(_ n: Int) -> Bool {
        var v = Set<Int>()
        var cur = n

        func dfs(_ num: Int) -> Int {
            if num == 0 { return 0 }
            let pop = num % 10
            let removed = num / 10
            return Int(pow(Double(pop), 2.0)) + dfs(removed)
        }

        while cur != 1 {
            cur = dfs(cur) 
            print(cur)
            if v.contains(cur) {
                return false
            }
            v.insert(cur)
        }


        return true
    }
}
