class PrefixTree {
    class Node {
        var childs = [Character: Node]()
        var isWord = false
    }
    var head = Node()

    func insert(_ word: String) {
        var cur = head
        for c in word {
            if cur.childs[c] == nil {
                cur.childs[c] = Node()
            }
            cur = cur.childs[c]!
        }
        cur.isWord = true
    }

    func search(_ word: String) -> Bool {
        var cur = head
        for c in word {
            if cur.childs[c] != nil {
                cur = cur.childs[c]!
            } else {
                return false
            }
        }
        return cur.isWord
    }

    func startsWith(_ prefix: String) -> Bool {
        var cur = head
        for c in prefix {
            if cur.childs[c] != nil {
                cur = cur.childs[c]!
            } else {
                return false
            }
        }
        return true
    }
}
