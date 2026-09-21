class Solution {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        var ar: [Character] = s.map { $0 }

        for c: Character in ar {
            if c == Character("(") || c == Character("{") || c == Character("[") {
                stack.insert(c)
            } else {
                let pop = stack.pop()
                if c == Character(")") && pop != Character("(") {
                    return false
                } 
                if c == Character("}") && pop != Character("}") {
                    return false
                }
                if c == Character("]") && pop != Character("]") {
                    return false
                }
            }
        }
        return stack.isEmpty()
    }
}
