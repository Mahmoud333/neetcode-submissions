class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        var smf = [Character: Int]()
        var lgf = [Character: Int]()

        var sm = [Character]()
        var lg = [Character]()

        if s1.count < s2.count {
            sm = s1.map {$0}
            lg = s2.map {$0}
        } else {    
            sm = s2.map {$0}
            lg = s1.map {$0}
        }

        for c in sm {
            smf[c, default: 0] += 1
        }

        var l = 0
        var r = 0
        while r < lg.count {
            while r < lg.count && (r - l) + 1 <= sm.count {
                let c = lg[r]
                lgf[c, default: 0] += 1
                r += 1
            }
            
            print(smf, "==", lgf)
            if smf == lgf {
                return true
            }
            
            lgf[lg[l]]! -= 1
            if lgf[lg[l]] == 0 {
                lgf[lg[l]] = nil
            }
            l += 1
        }
        print(smf)
        print(lgf)
        

        return false
    }
}
