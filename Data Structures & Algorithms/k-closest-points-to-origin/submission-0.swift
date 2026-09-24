class Solution {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        //var closet = Double(Int.max)
        //var closetp = points[0]
        let org = [0,0] // origin
        //var ar = [[Int]]() //[dif, x, y]
        var dict = [Int: Double]()

        for i in 0 ..< points.count {
            let p = points[i]
            let difx = Double(p[0] - org[0])
            let dify = Double(p[1] - org[1])
            let pw = pow(difx, 2.0) + pow(dify, 2.0)
            let dif = sqrt(pw)
            // if closet > dif {
            //     closet = dif
            //     closetp = p
            // }
            //ar.append([dif, p[0], p[1]])
            dict[i] = dif
        }

        //return [closetp]
        //let sorted = ar.sorted { $0[0] < $1[1] }
        //return sorted.map { [$0[1], $0[2]] }
        let sorted = dict.enumerated().sorted { $0.element.value < $1.element.value }
        let ans = sorted.map { points[$0.element.key] }
        return Array(ans[0..<k])
    }
}
