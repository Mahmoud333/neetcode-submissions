class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans = [[String]]()
        //var ans = Set<Set<String>>()
        var visited = Set<Int>()
        
        for i in 0 ..< strs.count where visited.contains(i) == false {
            let s1 = anag(strs[i])
            var patch = [strs[i]]
            //var patch: Set<String> = [strs[i]]
            for j in i + 1 ..< strs.count where i != j && visited.contains(j) == false {
                let s2 = anag(strs[j])
                if s1 == s2 {
                    patch.append(strs[j])
                    //patch.insert(strs[j])
                    visited.insert(j)
                }
            }
            ans.append(patch)
            //ans.insert(patch)
            visited.insert(i)
        }

        // return Array(ans.map { Array($0) })
        return ans
    }

    func anag(_ str: String) -> [Character: Int] {
        var freq = [Character: Int]()
        for c: Character in str {
            freq[c, default: 0] += 1 
        }
        return freq
    }
}
