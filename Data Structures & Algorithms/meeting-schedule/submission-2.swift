/**
 * Definition of Interval:
 * class Interval {
 *     var start: Int
 *     var end: Int
 *     init(_ start: Int, _ end: Int) {
 *         self.start = start
 *         self.end = end
 *     }
 * }
 */

class Solution {
    func canAttendMeetings(_ intervals: [Interval]) -> Bool {
        if intervals.count < 2 { return true }
        let sorted = intervals.sorted { 
            if $0.start == $1.start {
                return $0.end < $1.end
            }
            return $0.start < $1.start
        }
        print(sorted.map { [$0.start, $0.end] })

        for i in 1 ..< sorted.count {
            let p = sorted[i-1]
            let c = sorted[i]
            if p.end > c.start {
                return false
            }
        }

        return true
    }
}
