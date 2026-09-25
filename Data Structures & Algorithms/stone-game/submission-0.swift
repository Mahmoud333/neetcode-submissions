class Solution {
    func stoneGame(_ piles: [Int]) -> Bool {
        var alice = 0
        var bob = 0
        var l = 0
        var r = piles.count - 1
        
        while l < r {
            alice += max(piles[l], piles[r])
            bob += min(piles[l], piles[r])
            r -= 1
            l += 1
        }

        return alice > bob
    }
}
