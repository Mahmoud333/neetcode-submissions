class Solution {
        //Nickwhite https://www.youtube.com/watch?v=CRgXG1vK-wg&list=PLU_sdQYzUj2keVENTP0a5rdykRSgg9Wp-&index=13
    func reverse(_ x: Int) -> Int {
        var x = x
        var reversed = 0
        
        while x != 0 {
            let pop = x % 10 //Get the last digit, 123 % 10 = 3
            x /= 10          //remove the last digit, 123 / 10 -> 12
            
            if reversed > Int32.max/10 || reversed == Int32.max/10 && pop > 7 {
                return 0
            }
            if reversed < Int32.min/10 || reversed == Int32.min/10 && pop < -8 {
                return 0
            }
            
            reversed = (reversed * 10) + pop
        }
        
        return reversed
    }
}
