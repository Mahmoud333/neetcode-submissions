class Solution {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        var ar = intervals.sorted { $0[0] != $1[0] ? $0[0] < $1[0] : $0[1] < $1[1] }

        var stack = [ar[0]]
        var i = 1
        while i < ar.count {
            if stack.last![1] >= ar[i][0] {
                let t = stack.removeLast()
                stack.append([t[0], max(ar[i][1], t[1])])
            } else {
                stack.append(ar[i])
            }
            i += 1
        }


        return stack
    }
}
