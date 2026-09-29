class LRUCache {

    var size = 0
    var cache = [Int]()
    var map = [Int: Int]()

    init(_ capacity: Int) {
        size = capacity
    }

    func get(_ key: Int) -> Int {
        if map[key] == nil { 
            print("\nget:\(key)")
            print(map, cache)
            return -1
        }
        //if cache.count >= size {
            let i = cache.firstIndex { $0 == key }!
            cache.remove(at: i)
            cache.append(key)
        //}
        return map[key]!
    }

    func put(_ key: Int, _ value: Int) {
        if let i = cache.firstIndex { $0 == key } {
            let r = cache.remove(at: i)
            map[r] = nil
        } else if cache.count == size {
            let f = cache.removeFirst()
            map[f] = nil
        }
        cache.append(key)
        map[key] = value
    }
}
