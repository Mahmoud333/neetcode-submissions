class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums
        mergeSort(&nums, 0, nums.count - 1)
        return nums
    }

    private func mergeSort(_ arr: inout [Int], _ l: Int, _ r: Int) {
        if l >= r { return }
        let m = (l + r) / 2
        mergeSort(&arr, l, m)
        mergeSort(&arr, m + 1, r)
        merge(&arr, l, m, r)
    }

    private func merge(_ arr: inout [Int], _ l: Int, _ m: Int, _ r: Int) {
        let left = Array(arr[l...m])
        let right = Array(arr[m+1...r])

        var i = 0, j = 0, k = l

        while i < left.count && j < right.count {
            if left[i] <= right[j] {
                arr[k] = left[i]
                i += 1
            } else {
                arr[k] = right[j]
                j += 1
            }
            k += 1
        }
        while i < left.count {
            arr[k] = left[i]
            i += 1
            k += 1
        }
        while j < right.count {
            arr[k] = right[j]
            j += 1
            k += 1
        }
    }
}
class Solution1 {
    func sortArray(_ nums: [Int]) -> [Int] {
        var nums = nums

        func mergeSort(_ l: Int, _ r: Int) {
            if l > r { return }
            let m = (l + r) / 2
            mergeSort(l, m)
            mergeSort(m, r)
            merge(l, m, r)
        }

        func merge(_ l: Int, _ m: Int, _ r: Int) {
            let left = Array(nums[l...m])
            let right = Array(nums[m+1...r])

            var i = 0 //left index
            var j = 0 //right index
            var k = l //nums index

            while i < left.count && j < right.count {
                if left[i] <= right[j] {
                    nums[k] = left[i]
                    i += 1
                } else {
                    nums[k] = right[j]
                    j += 1
                }
                k += 1
            }

            // if left or right wasn't equal in count
            while i < left.count {
                nums[k] = left[i]
                i += 1
                k += 1
            }
            while j < right.count {
                nums[k] = right[j]
                j += 1
                k += 1
            }
        }

        mergeSort(0, nums.count - 1)

        return nums
    }
}
