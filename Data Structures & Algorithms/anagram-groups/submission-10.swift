class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [String: [String]]()

        for s in strs {
            let sortedS = String(s.sorted())
            res[sortedS, default: []].append(s)
        }

        return Array(res.values)
    }
}

class Solution3 {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var res = [Array<Int>: [String]]()

        for s in strs {
            var count = [Int](repeating: 0, count: 26)
            for c in s {
                count[Int(c.asciiValue!) - 97] += 1
            }
            res[count, default: []].append(s)
        }

        return Array(res.values)
    }
}

class Solution2 {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var ans = [[String]]()
        var visited = Set<Int>()
        var maps = [[Character: Int]]()
        
        for i in 0 ..< strs.count where visited.contains(i) == false {
            var s1 = [Character: Int]()
            if maps.count > i {
                s1 = maps[i]
            } else {
                s1 = anag(strs[i])
                maps.append(s1)
            }
            
            var patch = [strs[i]]
            
            for j in i + 1 ..< strs.count where i != j && visited.contains(j) == false {
                var s2 = [Character: Int]()
                if maps.count > j {
                    s2 = maps[j]
                } else {
                    s2 = anag(strs[j])
                    maps.append(s2)
                }

                if s1 == s2 {
                    patch.append(strs[j])
                    visited.insert(j)
                }
            }

            ans.append(patch)
            visited.insert(i)
        }

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


class Solution1 {
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
