class KthLargest {
    //should use a max heap for it
    var ar: [Int]
    var largest: Int
    init(_ k: Int, _ nums: [Int]) {
        ar = nums.sorted { $0 > $1 }
        largest = k
        print(ar)
    }

    func add(_ val: Int) -> Int {
        ar.append(val)
        ar = ar.sorted { $0 > $1 }
        return ar[largest - 1]
    }

    func insert(_ val: Int) {
        var l = 0
        var r = ar.count - 1 
        while l < r {
            let m = l + (r - l) / 2
            
        }
    }
}
