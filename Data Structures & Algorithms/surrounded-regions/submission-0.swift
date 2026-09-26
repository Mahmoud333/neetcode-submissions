class Solution {
    func solve(_ board: inout [[Character]]) {
        var v = Set<String>()
        
        func dfs(_ r: Int, _ c: Int) -> Bool {
            if r < 0 || r > board.count - 1 { return false }
            if c < 0 || c > board[0].count - 1 { return false }
            if board[r][c] == "X" { return true }
            if v.contains("\(r),\(c)") { return false }
            board[r][c] = "X"
            v.insert("\(r),\(c)")
            let surrounded = dfs(r - 1, c) && dfs(r + 1, c) && dfs(r, c-1) && dfs(r, c+1)
            if surrounded {
                return true
            } else {
                board[r][c] = "O"
                return false
            }
        }

        for r in 0 ..< board.count {
            for c in 0 ..< board[0].count {
                if board[r][c] == "O" {
                    dfs(r, c)
                }
            }
        }
    }
}
