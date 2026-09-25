class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        var ar = nums1 + nums2
        let sorted = ar.sorted { $0 < $1 }
        if sorted.count % 2 == 0 { // even
            let mid = 0 + (sorted.count - 0) / 2 
            print(sorted[mid], sorted[mid-1])
            return Double(sorted[mid] + sorted[mid-1]) / 2.0
        } else {                   //odd
            let mid = 0 + (sorted.count - 0) / 2 
            return Double(sorted[mid])
        }
        return 0.0
    }
}
