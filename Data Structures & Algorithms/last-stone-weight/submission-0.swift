class Solution {
    // needs a max heap for it
    func lastStoneWeight(_ stones: [Int]) -> Int {
        var ar = stones.sorted { $0 < $1 }
        while ar.count > 1 {
            let first = ar.removeLast()
            let second = ar.removeLast()
            let new = abs(first - second)
            if new > 0 {
                ar.insert(new, at: 0) // can search for the right place to insert it
            }
            ar = ar.sorted { $0 < $1 }
        }
        return ar.first ?? 0
    }
}
