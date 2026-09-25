class Solution {
    func minRemoveToMakeValid(_ s: String) -> String {
        let ar: [Character] = s.map { $0 }
        var stack = [Character]()
        var index = [Int]()

        var ans = [Character]()
        for i in 0 ..< ar.count {
            let c = ar[i]
            if c == "(" {
                ans.append("(")
                stack.append("(")
                index.append(ans.count - 1)
            } else if c == ")" {
                if stack.isEmpty {

                } else {
                    stack.removeLast()
                    index.removeLast()
                    ans.append(")")
                }
            } else {
                ans.append(c)
            }
        }

        if stack.isEmpty == false {
            while stack.isEmpty == false {
                ans.remove(at: index.removeLast())
                stack.removeLast()
            }
        }

        return ans.reduce("") { $0 + "\($1)" }
    }
}
