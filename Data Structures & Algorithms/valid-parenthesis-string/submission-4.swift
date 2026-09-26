class Solution {
    func checkValidString(_ s: String) -> Bool {
        let ar: [Character] = s.map { $0 }
        //var wild = 0
        //var missing = 0
        //var stack = [Character]()
        var stack = [Int]()
        var wild = [Int]()
        var missing = [Int]()

        for i in 0 ..< ar.count {
            let c = ar[i]
            if c == "*" {
                //wild += 1
                wild.append(i)
            } else if c == "(" {
                //stack.append("(")
                stack.append(i)
            } else if c == ")" {
                if stack.isEmpty {
                    //missing += 1
                    missing.append(i)
                } else {
                    stack.removeLast()
                }
            }
        }

        //if wild >= missing + stack.count {
        //    return true
        //}
        print(stack)
        print(missing)
        print(wild)

        let sp = 0
        let mp = 0
        let wp = 0
        while (sp < stack.count || mp < missing.count) && wp < wild.count {
            if stack.count > 0 {
                if stack[sp] < wild[wp] {
                    wild.removeFirst()
                    stack.removeFirst()
                }
            } else {
                if missing[sp] < wild[wp] {
                    wild.removeFirst()
                    stack.removeFirst()
                }
            }
        }

        if stack.count > 0 || missing.count > 0 {
            return false
        }

        return true
    }
}
