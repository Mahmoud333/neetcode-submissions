class Solution {
    func letterCombinations(_ digits: String) -> [String] {
        if digits.count == 0 { return [] }
        var dict: [String:[Character]] = [
            "1": [],
            "2": ["a", "b", "c"],
            "3": ["d", "e", "f"],
            "4": ["g", "h", "i"],
            "5": ["j", "k", "l"],
            "6": ["m", "n", "o"],
            "7": ["p", "q", "r", "s"],
            "8": ["t", "u", "v"],
            "9": ["w", "x", "y", "z"],
            "*": ["+"],
            "0": [" "],
            "#": [],
        ]

        var ar: [Character] = digits.map { $0 }
        var ans = [String]()
        func dfs(_ i: Int, _ str: String) {
            if i > ar.count - 1 {
                ans.append(str)
                return
            }
            for c in dict["\(ar[i])"]! {
                dfs(i + 1, str + "\(c)")
            }
        }

        dfs(0, "")

        return ans
    }
}