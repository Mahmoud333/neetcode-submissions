class Solution {
    func countSeniors(_ details: [String]) -> Int {
        var count = 0
        
        for id in details {
            let age = id[11...12]
            print(age)
            if let a = Int(age), a > 60 {
                count += 1
            }
        }

        return count
    }
}


extension String {
    subscript (bounds: CountableClosedRange<Int>) -> String { //let str = "hello how are you"[0 ... 8]
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return String(self[start...end])
    }
}
