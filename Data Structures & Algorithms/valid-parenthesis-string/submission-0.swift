class Solution {
    func checkValidString(_ s: String) -> Bool {
        var ar: [Character] = s.map { $0 }
        var wild = 0
        var missing = 0
        var stack = [Character]()

        for i in 0 ..< ar.count {
            let c = ar[i]
            if c == "*" {
                wild += 1
            } else if c == "(" {
                stack.append("(")
            } else if c == ")" {
                if stack.isEmpty {
                    missing += 1
                } else {
                    stack.removeLast()
                }
            }
        }

        if wild >= missing + stack.count {
            return true
        }

        return false
    }
}
