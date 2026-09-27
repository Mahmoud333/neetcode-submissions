class Solution {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var memo = [Int: Int]()

        func dfs(_ amount: Int) -> Int {
            if amount == 0 {
                return 0
            }
            if let cached = memo[amount] {
                return cached
            }

            var res = Int(1e9)
            for coin in coins {
                if amount - coin >= 0 {
                    res = min(res, 1 + dfs(amount - coin))
                }
            }

            memo[amount] = res
            return res
        }

        let minCoins = dfs(amount)
        return minCoins >= Int(1e9) ? -1 : minCoins
    }
}

class Solution4 {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        //let sorted = coins.sorted { $0 > $1 }
        let sorted = coins
        //print(sorted)
        var tab = [Int](repeating: Int.max, count: amount + 1)

        func dfs(_ cur: Int, _ count: Int) -> Int {
            if cur == 0 {
                return count
            } 
            if cur < 0 {
                return Int.max
            }
            if tab[cur] != Int.max {
                return tab[cur] + count
            }
            var mn = Int.max
            for coin in sorted {
                if cur - coin >= 0 {
                    //let rm = cur % coin
                    //let count = count + (cur - rm) / coin
                    //print(cur, coin, rm, count)
                    mn = min(mn, dfs(cur - coin, count + 1))
                }   
            }
            tab[cur] = mn
            return mn            
        }

        for i in 1 ... amount {
            tab[i] = dfs(i, 0)
        }

        return tab[amount] == Int.max ? -1 : tab[amount]
    }
}

class Solution3 {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        //let sorted = coins.sorted { $0 > $1 }
        let sorted = coins
        //print(sorted)
        var tab = [Int](repeating: Int.max, count: amount + 1)

        func dfs(_ cur: Int, _ count: Int) -> Int {
            if cur == 0 {
                return count
            } 
            if cur < 0 {
                return Int.max
            }
            if tab[cur] != Int.max {
                return tab[cur] + count
            }
            var mn = Int.max
            for coin in sorted {
                if cur - coin >= 0 {
                    mn = min(mn, dfs(cur - coin, count + 1))
                }   
            }
            tab[cur] = mn
            return mn            
        }

        for i in 1 ... amount {
            tab[i] = dfs(i, 0)
        }

        return tab[amount] == Int.max ? -1 : tab[amount]
    }
}

class Solution2 {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        if amount == 0 { return 0 }
        let sorted = coins.sorted { $0 > $1 }
        //print(sorted)

        var ans = Int.max // minimum

        func dfs(_ cur: Int, _ count: Int) {
            if count > ans { return }
            if cur < 0 { return }
            if cur == 0 {
                ans = min(ans, count)
            }
            for coin in sorted {
                if cur - coin >= 0 {
                    dfs(cur - coin, count + 1)
                }
            }
        }

        dfs(amount, 0)

        return ans == Int.max ? -1 : ans
    }
}

class Solution1 {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        let sorted = coins.sorted { $0 > $1 }
        print(sorted)
        var cur = amount
        var count = 0 

        var i = 0
        //for i in 0 ..< sorted.count {
        while i < sorted.count {
            if cur - sorted[i] >= 0 {
                count += 1
                cur -= sorted[i]
            } else {
                i += 1
            }
            if cur == 0 {
                return count
            }
        }

        return cur == 0 ? count : -1
    }
}
