class Solution {
    func plusOne(_ digits: [Int]) -> [Int] {
        var ar = digits
        var r = ar.count - 1
        var carry = 1
        while r >= 0 {
            var sum = ar[r] + carry
            print("sum:", sum)
            if sum > 9 {
                let rem = sum % 10
                ar[r] = rem
                carry = 1
            } else {
                carry = 0
                ar[r] = sum
            }
            if carry == 0 {
                break
            }
            r -= 1
        }
        if carry > 0 {
            ar.insert(carry, at: 0)
        }
        return ar
    }
}
