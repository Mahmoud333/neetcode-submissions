class Solution {
    func islandPerimeter(_ grid: [[Int]]) -> Int {
        grid.forEach {
            print($0)
        }
        var queue = [[Int]]()

        var perimeter = 0

        outer: for r in 0 ..< grid.count {
            for c in 0 ..< grid[0].count {
                if grid[r][c] == 1 {
                    queue.append([r,c])
                    break outer
                }
            }
        }

        var v = Set<String>()
        while queue.isEmpty == false {
            let n = queue.removeFirst()
            let r = n[0]
            let c = n[1]
            v.insert("\(r),\(c)")
            var borders = 4
            
            //up
            if r - 1 >= 0, grid[r-1][c] == 1 {
                if v.contains("\(r-1),\(c)") == false {
                    queue.append([r-1, c])   
                }
                borders -= 1
            }
            // down
            if r + 1 < grid.count, grid[r+1][c] == 1 {
                if v.contains("\(r+1),\(c)") == false {
                    queue.append([r+1, c])   
                }
                borders -= 1
            }
            //left 
            if c - 1 >= 0, grid[r][c-1] == 1 {
                if v.contains("\(r),\(c-1)") == false {
                    queue.append([r, c-1])   
                }
                borders -= 1
            }
            //right 
            if c + 1 < grid[0].count, grid[r][c+1] == 1 {
                if v.contains("\(r),\(c+1)") == false {
                    queue.append([r, c+1])   
                }
                borders -= 1
            }
            print(r, c, "borders: \(borders)")
            perimeter += borders 
        }

        return perimeter
    }
}
