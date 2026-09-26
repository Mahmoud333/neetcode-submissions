class Solution {
    func isPalindrome(_ s: String) -> Bool {
        var ar: [Character] = s.map { $0 }

        var l = 0
        var r = ar.count - 1
        while l <= r {
            print("ar[l]:\(ar[l])")
            //if ar[l].isLetter == false && ar[l].isNumber == false {
            if ar[l].isSymbol {
                l += 1
                continue
            }
            print("ar[r]:\(ar[r])")
            //if ar[r].isLetter == false && ar[l].isNumber == false {
            if ar[r].isSymbol {
                r -= 1
                continue
            }
            print("\(ar[l].lowercased()) == \(ar[r].lowercased())")
            if ar[l].lowercased() == ar[r].lowercased() {
                l += 1
                r -= 1
                continue
            } else {
                return false
            }
        }
        return true
    }
}
