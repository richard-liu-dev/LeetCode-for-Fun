class Solution {
    func reverse(_ x: Int) -> Int {
        
        if x == -1 {
            return 0
        }
        
        var s = String()
        var isMinus = false
        var retValue: Int = 0
        if x < 0 {
            s = String(-x)
            isMinus = true
        } else {
            s = String(x)
        }
        
        let len = s.count
        for (index, c) in s.reversed().enumerated() {
            
            retValue += Int(String(c))! * Int(pow(Double(10), Double(len - index - 1)))

        }
        
        if isMinus {
            retValue = -retValue
            
            if Double(retValue) < pow(-2.0, 31.0) {
                return 0
            } else {
                return retValue
            }
        } else {
            if Double(retValue) > pow(2.0, 31.0) {
                return 0
            } else {
                return retValue
            }
        }
    }
}