class Solution {
    func solve(_ board: inout [[Character]]) {
        var v = Set<[Int]>() //visited
        var tv = Set<[Int]>() //temp visited
        
        func dfs(_ r: Int, _ c: Int) -> Bool {
            if r < 0 || r > board.count - 1 { return false }
            if c < 0 || c > board[0].count - 1 { return false }
            if board[r][c] == "X" { return true }
            if tv.contains([r,c]) { return false }
            board[r][c] = "X"
            tv.insert([r,c])
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
                tv = Set<[Int]>()
                if board[r][c] == "O" && v.contains([r,c]) == false {
                    if dfs(r, c) == false {
                        for v in tv {
                            board[v[0]][v[1]] = "O"
                        }
                    }
                    v = v.union(tv)
                }
            }
        }
    }
}
/*
"X","O","X","O","X","O","O","O","X","O"],["X","O","O","X","X","X","O","O","O","X"],["O","O","O","O","O","O","O","O","X","X"],["O","O","O","O","O","O","X","O","O","X"],["O","O","X","X","X","X","X","O","O","O"],["X","O","O","X","X","X","X","X","X","O"],["X","O","X","X","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","X"],["O","O","O","O","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","O"]]
---------------------------------------------
"X","O","X","O","X","O","O","O","X","O"],["X","O","O","X","X","X","O","O","O","X"],["O","O","O","O","O","O","O","O","X","X"],["O","O","O","O","O","O","X","O","O","X"],["O","O","X","X","O","X","X","O","O","O"],["X","O","O","X","X","X","X","X","X","O"],["X","O","X","X","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","X"],["O","O","O","O","X","X","X","O","X","O"],["X","X","O","X","X","X","X","O","O","O"]]


*/