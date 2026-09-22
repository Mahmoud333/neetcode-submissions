class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        for i in m ..< nums1.count {
            nums1[i] = nums2[i - m]
        }
        nums1 = nums1.sorted { $0 < $1 }
    }
}
