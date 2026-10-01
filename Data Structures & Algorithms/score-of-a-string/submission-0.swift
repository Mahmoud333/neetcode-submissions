class Solution {
    func scoreOfString(_ s: String) -> Int {
        let ar = s.map { $0 }
        var sum = 0
        for i in 1 ..< ar.count {
            let dif = abs(Int(ar[i-1].asciiValue!) - Int(ar[i].asciiValue!))
            sum += dif
        }
        return sum
    }
}
