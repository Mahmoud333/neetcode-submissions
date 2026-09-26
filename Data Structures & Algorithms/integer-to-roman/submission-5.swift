import Foundation

class Solution {
    func intToRoman(_ num: Int) -> String {
        let dict = [
            "I": 1,
            "IV": 4, "V": 5,
            "IX": 9, "X": 10,
            "XL": 40, "L": 50,
            "XC": 90, "C": 100,
            "CD": 400, "D": 500,
            "CM": 900, "M": 1000
        ]
        
        var ar = [
            "I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"
        ]
        ar.reverse()
        
        var num = num
        var ans = ""
        var i = 0
        while i < ar.count {
            let val = dict[ar[i]]!
            if val <= num {
                print(num)
                ans += ar[i]
                num -= val
                print(ans, num)
            } else {
                // if i + 1 < ar.count 
                // && dict[ar[i]]! - dict[ar[i+1]]! <= num 
                // && num - dict[ar[i]]! - dict[ar[i+1]]! < dict[ar[i+1]]! {
                //     print(num)
                //     ans += ar[i+1] + ar[i] 
                //     num -= dict[ar[i]]! - dict[ar[i+1]]!
                //     print(ans, num)
                //     i += 1
                // } else {
                    
                // }
                i += 1
            }
        }

        return ans
    }
}
