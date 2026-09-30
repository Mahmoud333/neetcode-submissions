class Solution {
    func romanToInt(_ s: String) -> Int {
        let map = [
            "I": 1,
            "IV": 4, "V": 5,
            "IX": 9, "X": 10,
            "XL": 40, "L": 50,
            "XC": 90, "C": 100,
            "CD": 400, "D": 500,
            "CM": 900, "M": 1000
        ]
        
        var ar = s.map { "\($0)" }
        var ans = [String]()

        var i = 0
        var sum = 0
        while i < ar.count {
            if i + 1 < ar.count 
            && map[ ar[i] + ar[i+1] ] != nil {
                let v = map[ ar[i] + ar[i+1] ]!
                ans.append("\( v )")
                sum += v
                i += 2
            } else {
                let v = map[ar[i]]!
                ans.append("\( v )")
                sum += v
                i += 1
            }
        }
        print(ans)

        return sum
    }
}
