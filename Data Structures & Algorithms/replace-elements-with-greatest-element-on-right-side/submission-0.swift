class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var ar = arr 
        var mx = ar[ar.count-1]
        ar[ar.count-1] = -1

        for r in stride(from: ar.count - 2, to: -1, by: -1) {
            ar[r] = mx
            mx = max(mx, arr[r])
        }

        return ar
    }
}
