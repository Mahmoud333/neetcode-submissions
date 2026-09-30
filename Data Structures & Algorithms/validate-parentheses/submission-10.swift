class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        var ar: [Character] = s.map { $0 }

        for c: Character in ar {
            if c == Character("(") || c == Character("{") || c == Character("[") {
                stack.append(c)
            } else {
                let pop = stack.popLast()
                if c == Character(")") && pop != Character("(") {
                    return false
                } 
                if c == Character("}") && pop != Character("{") {
                    return false
                }
                if c == Character("]") && pop != Character("[") {
                    return false
                }
            }
        }
        return stack.isEmpty
    }
}


class Solution1 {
    func isValid(_ s: String) -> Bool {
        let ar = s.map { $0 }
        var stack = [Character]()

        for i in 0 ..< ar.count {
            let c = ar[i]
            if c == Character("{") || c == Character("[") || c == Character("(") {
                stack.append(c)
            } else if c == Character("}") || c == Character("]") ||  c == Character(")") {
                let rm = stack.removeLast()
                if rm != Character("{") && c == Character("}") {
                    print("false, else", c, rm)
                    return false
                } else if rm != Character("[") && c == Character("]") {
                    print("false, else", c, rm)
                    return false
                } else if rm != Character("(") && c == Character(")") {
                    print("false, else", c, rm)
                    return false
                }
            }
        }

        
        print("stack.isEmpty", stack.isEmpty)
        return stack.isEmpty
    }
}
