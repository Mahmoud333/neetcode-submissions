class Solution {
    // we need a max heap in it
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var sorted = [Int]() // [largest, ., ., ., ., k]

        func insert(_ v: Int) {
            if sorted.isEmpty == false {
                if sorted.count == k {
                    if v < sorted.last! { //lower than our min
                        //ignore it
                        return
                    } else if v > sorted.last! {
                        sorted.removeLast()
                    }
                }
            }

            //add it using binary search
            var l = 0
            var r = sorted.count

            while l + 1 < r {
                let mid = (l + r) / 2
                if sorted[mid] < v {
                    r = mid
                } else {
                    l = mid
                }
            }
            sorted.insert(v, at: r)
        }

        for num in nums {
            insert(num)
            //print(num, sorted)
        }

        return sorted[k - 1]
    }
}
